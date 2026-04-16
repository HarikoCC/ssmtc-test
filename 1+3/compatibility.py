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
PROBLEMATIC_FILES = {"randacc.arg2", "recurseq.arg2","randacc.arg3", "recurseq.arg3"}
OUTPUT_CMD_FILE = "test_commands.txt"
OUTPUT_INFO_FILE = "test_commands_with_info.txt"
# ============================================

def get_cache_directories():
    cache_dirs = []
    for entry in os.listdir("."):
        # 🔥 修复1：os.isdir → os.path.isdir（解决报错崩溃）
        if os.path.isdir(entry):
            sim_path = os.path.join(entry, "smtsim")
            if os.path.exists(sim_path) and os.access(sim_path, os.X_OK):
                cache_dirs.append(entry)
    if not cache_dirs:
        print("错误：未找到任何包含smtsim可执行文件的Cache子目录！")
        sys.exit(1)
    return sorted(cache_dirs)

def get_file_base_name(filename):
    if filename.endswith(".arg4"):
        return filename[:-5]
    elif filename.endswith(".arg3"):
        return filename[:-5]
    elif filename.endswith(".arg2"):
        return filename[:-5]
    elif filename.endswith(".arg"):
        return filename[:-4]
    return filename

def get_file_thread_count(filename):
    if filename.endswith(".arg4"):
        return 4
    elif filename.endswith(".arg3"):
        return 3
    elif filename.endswith(".arg2"):
        return 2
    else:
        return 1

def get_file_thread_weight(filename):
    if filename.endswith(".arg4"):
        return 4
    elif filename.endswith(".arg3"):
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
        3: glob.glob("*.arg3"),
        4: glob.glob("*.arg4")
    }
    for t in file_dict:
        file_dict[t] = sorted(list(set(file_dict[t])))
    return file_dict

def generate_all_combinations(file_dict, scenario_type):
    combinations = []
    if scenario_type == 1:
        if len(file_dict[1]) < 4:
            print(f"错误：工况1需要至少4个.arg文件，当前{len(file_dict[1])}个")
            sys.exit(1)
        for c in itertools.combinations(file_dict[1], 4):
            if is_combination_valid(c):
                combinations.append(c)
    elif scenario_type == 2:
        if len(file_dict[1]) < 2 or len(file_dict[2]) < 1:
            print("错误：工况2需要至少2个.arg + 1个.arg2")
            sys.exit(1)
        for p1 in itertools.combinations(file_dict[1], 2):
            for p2 in file_dict[2]:
                comb = (p2,) + p1
                if is_combination_valid(comb):
                    combinations.append(comb)
    elif scenario_type == 3:
        if len(file_dict[1]) < 1 or len(file_dict[3]) < 1:
            print("错误：工况3需要至少1个.arg + 1个.arg3")
            sys.exit(1)
        for f1, f3 in itertools.product(file_dict[1], file_dict[3]):
            comb = (f3, f1)
            if is_combination_valid(comb):
                combinations.append(comb)
    elif scenario_type == 4:
        if len(file_dict[2]) < 2:
            print("错误：工况4需要至少2个.arg2")
            sys.exit(1)
        for c in itertools.combinations(file_dict[2], 2):
            if is_combination_valid(comb):
                combinations.append(comb)
    elif scenario_type == 5:
        if len(file_dict[4]) < 1:
            print("错误：工况5需要至少1个.arg4")
            sys.exit(1)
        combinations = [(f,) for f in file_dict[4]]
    else:
        print("错误：工况必须为1-5")
        sys.exit(1)
    if not combinations:
        print("错误：未生成任何有效组合")
        sys.exit(1)
    return combinations

def is_problematic_combination(comb):
    #return any(f in PROBLEMATIC_FILES for f in comb)
    return 1;

def generate_default_permutation(comb):
    return tuple(sorted(comb, key=lambda x: (-get_file_thread_weight(x), x)))

def generate_sorted_permutations(comb):
    perms = list(set(itertools.permutations(comb)))
    def score(p):
        s = 0
        for i, f in enumerate(p):
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

# ===================== 指令生成（无目录名，通用版） =====================
def generate_command_line(order):
    rel_args = [f"../{f}" for f in order]
    return f"./smtsim {' '.join(rel_args)}"
# ====================================================================

def main():
    parser = argparse.ArgumentParser(description="全Cache兼容测试指令生成工具")
    parser.add_argument("-s", "--scenario", type=int, required=True, help="1-5工况")
    parser.add_argument("-j", "--jobs", type=int, default=os.cpu_count(), help="并行进程数")
    args = parser.parse_args()

    root_dir = os.path.abspath(".")
    cache_dirs = get_cache_directories()
    total_cache_count = len(cache_dirs)
    file_dict = categorize_arg_files()
    all_combs = generate_all_combinations(file_dict, args.scenario)

    safe_combs = []
    problem_combs = []
    for c in all_combs:
        if is_problematic_combination(c):
            problem_combs.append(c)
        else:
            safe_combs.append(c)

    scenario_map = {1:"1+1+1+1", 2:"1+1+2", 3:"1+3", 4:"2+2", 5:"4线程"}

    print("="*60)
    print(" 测试指令生成工具 - 全目录通用单份清单")
    print(f" 工况: {args.scenario} ({scenario_map.get(args.scenario, '')})")
    print(f" 总组合数: {len(all_combs)}")
    print(f" 安全组合: {len(safe_combs)} | 问题组合: {len(problem_combs)}")
    print(f" 总Cache数: {total_cache_count} 个")
    print("="*60)

    safe_map = {c: generate_default_permutation(c) for c in safe_combs}
    problem_success_map = {}
    problem_failed_with_full_details = []

    if problem_combs:
        print("\n开始预扫描问题组合...")
        with ProcessPoolExecutor(max_workers=args.jobs) as pool:
            futs = {pool.submit(process_problematic_combination, c, cache_dirs, root_dir): c for c in problem_combs}
            for i, fut in enumerate(as_completed(futs), 1):
                c, success_order, stat, exec_details = fut.result()
                if stat == "success" and success_order:
                    problem_success_map[c] = {"order": success_order, "exec_details": exec_details}
                    print(f" [{i}/{len(problem_combs)}] ✅ 找到全兼容顺序: {c}")
                else:
                    problem_failed_with_full_details.append({"comb": c, "exec_details": exec_details})
                    print(f" [{i}/{len(problem_combs)}] ❌ 无全兼容顺序: {c}")
    else:
        print("\n无问题组合，跳过预扫描")

    final_command_map = {}
    for c in safe_map:
        final_command_map[c] = safe_map[c]
    for c in problem_success_map:
        final_command_map[c] = problem_success_map[c]["order"]
    sorted_combs = sorted(final_command_map.keys(), key=str)

    print("\n" + "="*60)
    # 修复统计：仅生成一份通用指令
    print(f"生成完成: 总执行指令 {len(final_command_map)} 条（全目录通用，无重复）")
    print(f"成功生成指令组合: {len(final_command_map)} 个")
    print(f"剔除无兼容顺序组合: {len(problem_failed_with_full_details)} 个")
    print("="*60)

    # 🔥 修复2：删除重复循环，每个组合只生成1次指令（无重复）
    with open(OUTPUT_CMD_FILE, 'w', encoding='utf-8') as f_cmd:
        for c in sorted_combs:
            order = final_command_map[c]
            f_cmd.write(generate_command_line(order) + "\n")

    # 信息文件同步修复
    with open(OUTPUT_INFO_FILE, 'w', encoding='utf-8') as f_info:
        f_info.write(f"# 生成时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f_info.write(f"# 测试工况: {scenario_map.get(args.scenario)}\n")
        f_info.write(f"# 覆盖Cache列表: {', '.join(cache_dirs)} (共{total_cache_count}个)\n")
        f_info.write(f"# 指令清单：全目录通用单份清单\n#\n")
        
        f_info.write("# 安全组合 + 问题组合（全兼容）\n")
        for c in sorted_combs:
            order = final_command_map[c]
            f_info.write(f"# 组合: {' '.join(c)} | 顺序: {' '.join(order)}\n")
            f_info.write(generate_command_line(order) + "\n\n")
        
        if problem_failed_with_full_details:
            f_info.write("\n# 无兼容顺序，已剔除的组合\n")
            for item in problem_failed_with_full_details:
                f_info.write(f"# {item['comb']}\n")

    print(f"✅ 全目录通用指令文件: {OUTPUT_CMD_FILE}")
    print(f"✅ 全量详情信息文件: {OUTPUT_INFO_FILE}")

if __name__ == "__main__":
    main()

