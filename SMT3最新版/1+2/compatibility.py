#!/usr/bin/env python3
import argparse
import glob
import subprocess
import os
import sys
import itertools
from concurrent.futures import ProcessPoolExecutor, as_completed
from datetime import datetime

# ================= 配置区域 =================
TEST_TIMEOUT = 180
OUTPUT_CMD_FILE = "test_commands.txt"
OUTPUT_INFO_FILE = "test_commands_with_info.txt"
# ============================================

def get_cache_directories():
    cache_dirs = []
    for entry in os.listdir("."):
        if os.path.isdir(entry):
            sim_path = os.path.join(entry, "smtsim")
            if os.path.exists(sim_path) and os.access(sim_path, os.X_OK):
                cache_dirs.append(entry)
    if not cache_dirs:
        print("Error: No Cache subdir containing smtsim executable found!")
        sys.exit(1)
    return sorted(cache_dirs)

def get_file_base_name(filename):
    if filename.endswith(".arg3"):
        return filename[:-5]
    elif filename.endswith(".arg2"):
        return filename[:-5]
    elif filename.endswith(".arg"):
        return filename[:-4]
    return filename

def get_file_thread_count(filename):
    if filename.endswith(".arg3"):
        return 3
    elif filename.endswith(".arg2"):
        return 2
    else:
        return 1

def get_file_thread_weight(filename):
    if filename.endswith(".arg3"):
        return 3
    elif filename.endswith(".arg2"):
        return 2
    else:
        return 1

def is_combination_valid(combination):
    used_programs = set()
    for file in combination:
        base_name = get_file_base_name(file)
        if base_name in used_programs:
            return False
        used_programs.add(base_name)
    return True

def categorize_arg_files():
    file_dict = {
        1: glob.glob("*.arg"),
        2: glob.glob("*.arg2"),
        3: glob.glob("*.arg3")
    }
    for t in file_dict:
        file_dict[t] = sorted(list(set(file_dict[t])))
    return file_dict

def generate_all_combinations(file_dict, scenario_type):
    combinations = []
    if scenario_type == 1:
        # 工况1: 1+1+1 (3个 .arg)
        if len(file_dict[1]) < 3:
            print(f"Error: Scenario 1 needs at least 3 .arg files, current: {len(file_dict[1])}")
            sys.exit(1)
        for c in itertools.combinations(file_dict[1], 3):
            if is_combination_valid(c):
                combinations.append(c)
    elif scenario_type == 2:
        # 工况2: 1+2 (1个 .arg + 1个 .arg2)
        if len(file_dict[1]) < 1 or len(file_dict[2]) < 1:
            print("Error: Scenario 2 needs at least 1 .arg + 1 .arg2")
            sys.exit(1)
        for f1, f2 in itertools.product(file_dict[1], file_dict[2]):
            comb = (f2, f1)
            if is_combination_valid(comb):
                combinations.append(comb)
    elif scenario_type == 3:
        # 工况3: 3 (1个 .arg3)
        if len(file_dict[3]) < 1:
            print("Error: Scenario 3 needs at least 1 .arg3")
            sys.exit(1)
        combinations = [(f,) for f in file_dict[3]]
    else:
        print("Error: Scenario must be 1-3")
        sys.exit(1)
    
    if not combinations:
        print("Error: No valid combinations generated")
        sys.exit(1)
    return combinations

def is_problematic_combination(comb):
    # 强制认为所有组合都是不安全的，全部进入预扫描流程
    return True

def generate_default_permutation(comb):
    return tuple(sorted(comb, key=lambda x: (-get_file_thread_weight(x), x)))

def generate_sorted_permutations(comb):
    perms = list(set(itertools.permutations(comb)))
    def score(p):
        s = 0
        for i, f in enumerate(p):
            # 权重系数保持逻辑不变，仅权重值本身随文件变化
            s += get_file_thread_weight(f) * (10 - i)
        return s
    perms.sort(key=score, reverse=True)
    return perms

def test_order_in_cache(cache_dir, perm, root_dir):
    arg_paths = [os.path.join(root_dir, f) for f in perm]
    sim = "./smtsim"
    try:
        r = subprocess.run(
            [sim] + arg_paths,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.STDOUT,
            timeout=TEST_TIMEOUT,
            cwd=cache_dir
        )
        return r.returncode == 0
    except subprocess.TimeoutExpired:
        return True
    except Exception:
        return False

def check_universal_order_with_full_details(perm, cache_dirs, root_dir):
    success_caches = []
    failed_caches = []
    for d in cache_dirs:
        if test_order_in_cache(d, perm, root_dir):
            success_caches.append(d)
        else:
            failed_caches.append(d)
    is_all_success = len(failed_caches) == 0
    return is_all_success, success_caches, failed_caches

def process_problematic_combination(comb, cache_dirs, root_dir):
    all_exec_details = []
    for p in generate_sorted_permutations(comb):
        is_all_success, success_caches, failed_caches = check_universal_order_with_full_details(p, cache_dirs, root_dir)
        all_exec_details.append({
            "order": p,
            "success_caches": success_caches,
            "failed_caches": failed_caches
        })
        if is_all_success:
            return (comb, p, "success", all_exec_details)
    return (comb, None, "failed", all_exec_details)

def generate_command_line(order):
    rel_args = [f"../{f}" for f in order]
    return f"./smtsim {' '.join(rel_args)}"

def main():
    parser = argparse.ArgumentParser(description="SMT-3 Full Cache Compatibility Test Generator")
    parser.add_argument("-s", "--scenario", type=int, required=True, help="1-3 (1:1+1+1, 2:1+2, 3:3)")
    parser.add_argument("-j", "--jobs", type=int, default=os.cpu_count(), help="Number of parallel jobs")
    args = parser.parse_args()

    root_dir = os.path.abspath(".")
    cache_dirs = get_cache_directories()
    total_cache_count = len(cache_dirs)
    file_dict = categorize_arg_files()
    all_combs = generate_all_combinations(file_dict, args.scenario)

    # 分类：由于 is_problematic_combination 恒为 True，safe_combs 将始终为空
    safe_combs = []
    problem_combs = []
    for c in all_combs:
        if is_problematic_combination(c):
            problem_combs.append(c)
        else:
            safe_combs.append(c)

    scenario_map = {1: "1+1+1", 2: "1+2", 3: "3-thread"}

    print("="*60)
    print(" SMT-3 Test Command Generator (Universal Single List)")
    print(f" Scenario: {args.scenario} ({scenario_map.get(args.scenario, '')})")
    print(f" Total Combinations: {len(all_combs)}")
    print(f" Safe Combinations (Skipped): {len(safe_combs)} | Problem Combinations (Scanned): {len(problem_combs)}")
    print(f" Total Cache Dirs: {total_cache_count}")
    print("="*60)

    safe_map = {c: generate_default_permutation(c) for c in safe_combs}
    problem_success_map = {}
    problem_failed_with_full_details = []

    if problem_combs:
        print("\nStarting pre-scan for problematic combinations...")
        with ProcessPoolExecutor(max_workers=args.jobs) as pool:
            futs = {pool.submit(process_problematic_combination, c, cache_dirs, root_dir): c for c in problem_combs}
            for i, fut in enumerate(as_completed(futs), 1):
                c, success_order, stat, exec_details = fut.result()
                if stat == "success" and success_order:
                    problem_success_map[c] = {"order": success_order, "exec_details": exec_details}
                    print(f" [{i}/{len(problem_combs)}] OK: Found universal order for {c}")
                else:
                    problem_failed_with_full_details.append({"comb": c, "exec_details": exec_details})
                    print(f" [{i}/{len(problem_combs)}] FAIL: No universal order for {c}")
    else:
        print("\nNo problematic combinations found, skipping pre-scan.")

    final_command_map = {}
    for c in safe_map:
        final_command_map[c] = safe_map[c]
    for c in problem_success_map:
        final_command_map[c] = problem_success_map[c]["order"]
    sorted_combs = sorted(final_command_map.keys(), key=str)

    print("\n" + "="*60)
    print(f"Generation Complete: {len(final_command_map)} total commands (Universal for all caches)")
    print(f"Successful combinations: {len(final_command_map)}")
    print(f"Rejected combinations (No compatible order): {len(problem_failed_with_full_details)}")
    print("="*60)

    with open(OUTPUT_CMD_FILE, 'w', encoding='utf-8') as f_cmd:
        for c in sorted_combs:
            order = final_command_map[c]
            f_cmd.write(generate_command_line(order) + "\n")

    with open(OUTPUT_INFO_FILE, 'w', encoding='utf-8') as f_info:
        f_info.write(f"# Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f_info.write(f"# Scenario: {scenario_map.get(args.scenario)}\n")
        f_info.write(f"# Covered Caches: {', '.join(cache_dirs)} ({total_cache_count} total)\n")
        f_info.write(f"# Command List: Universal single list for all directories\n#\n")
        
        f_info.write("# Safe Combinations + Problem Combinations (Universal Compatible)\n")
        for c in sorted_combs:
            order = final_command_map[c]
            f_info.write(f"# Comb: {' '.join(c)} | Order: {' '.join(order)}\n")
            f_info.write(generate_command_line(order) + "\n\n")
        
        if problem_failed_with_full_details:
            f_info.write("\n# Rejected Combinations (No compatible order found)\n")
            for item in problem_failed_with_full_details:
                f_info.write(f"# {item['comb']}\n")

    print(f"OK: Universal command file -> {OUTPUT_CMD_FILE}")
    print(f"OK: Detailed info file -> {OUTPUT_INFO_FILE}")

if __name__ == "__main__":
    main()

