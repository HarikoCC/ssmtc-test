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
PROBLEMATIC_FILES = {"randacc.arg2", "recurseq.arg2"}
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
            if is_combination_valid(c):
                combinations.append(c)
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
    return any(f in PROBLEMATIC_FILES for f in comb)

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
    except (subprocess.TimeoutExpired, Exception):
        return False

def check_universal_order(perm, cache_dirs, root_dir):
    for d in cache_dirs:
        if not test_order_in_cache(d, perm, root_dir):
            return False
    return True

def process_problematic_combination(comb, cache_dirs, root_dir):
    for p in generate_sorted_permutations(comb):
        if check_universal_order(p, cache_dirs, root_dir):
            return (comb, p, "success")
    return (comb, None, "failed")

def generate_command_line(cache_dir, order):
    rel_args = [f"../{f}" for f in order]
    return f"./{cache_dir}/smtsim {' '.join(rel_args)}"

def main():
    parser = argparse.ArgumentParser(description="全Cache兼容测试指令生成工具")
    parser.add_argument("-s", "--scenario", type=int, required=True, help="1-5工况")
    parser.add_argument("-j", "--jobs", type=int, default=os.cpu_count(), help="并行进程数")
    args = parser.parse_args()

    root_dir = os.path.abspath(".")
    cache_dirs = get_cache_directories()
    file_dict = categorize_arg_files()
    all_combs = generate_all_combinations(file_dict, args.scenario)

    safe_combs = []
    problem_combs = []
    for c in all_combs:
        if is_problematic_combination(c):
            problem_combs.append(c)
        else:
            safe_combs.append(c)

    scenario_map = {
        1:"1+1+1+1", 2:"1+1+2", 3:"1+3", 4:"2+2", 5:"4线程"
    }

    print("="*60)
    print(" 测试指令生成工具 - 自检通过")
    print(f" 工况: {args.scenario} ({scenario_map.get(args.scenario, '')})")
    print(f" 总组合数: {len(all_combs)}")
    print(f" 安全组合: {len(safe_combs)} | 问题组合: {len(problem_combs)}")
    print(f" Cache目录: {len(cache_dirs)} 个")
    print(f" 并行数: {args.jobs}")
    print("="*60)

    safe_map = {c: generate_default_permutation(c) for c in safe_combs}
    problem_map = {}
    failed = []

    if problem_combs:
        print("\n开始预扫描问题组合...")
        with ProcessPoolExecutor(max_workers=args.jobs) as pool:
            futs = {
                pool.submit(process_problematic_combination, c, cache_dirs, root_dir): c
                for c in problem_combs
            }
            for i, fut in enumerate(as_completed(futs), 1):
                c, order, stat = fut.result()
                if stat == "success" and order:
                    problem_map[c] = order
                    print(f" [{i}/{len(problem_combs)}] ✅ {c}")
                else:
                    failed.append(c)
                    print(f" [{i}/{len(problem_combs)}] ❌ {c}")
    else:
        print("\n无问题组合，跳过预扫描")

    final = {}
    final.update(safe_map)
    final.update(problem_map)
    sorted_combs = sorted(final.keys(), key=str)

    print("\n="*60)
    print(f"生成完成: 总指令 {len(final)*len(cache_dirs)} 条")
    print(f"成功组合: {len(final)} | 剔除失败: {len(failed)}")
    print("="*60)

    # 纯指令文件（自动化直接执行）
    with open(OUTPUT_CMD_FILE, 'w', encoding='utf-8') as f:
        for c in sorted_combs:
            o = final[c]
            for d in cache_dirs:
                f.write(generate_command_line(d, o) + "\n")

    # 带注释信息文件
    with open(OUTPUT_INFO_FILE, 'w', encoding='utf-8') as f:
        f.write(f"# 生成时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f.write(f"# 工况: {scenario_map.get(args.scenario)}\n")
        f.write(f"# Cache: {', '.join(cache_dirs)}\n\n")
        for c in sorted_combs:
            o = final[c]
            typ = "安全组合" if c in safe_map else "问题组合(兼容)"
            f.write(f"# {typ} | {' + '.join(c)}\n")
            f.write(f"# 顺序: {' '.join(o)}\n")
            for d in cache_dirs:
                f.write(generate_command_line(d, o) + "\n")
            f.write("\n")
        if failed:
            f.write("\n# 以下组合无兼容顺序已剔除:\n")
            for c in failed:
                f.write(f"#  - {' + '.join(c)}\n")

    print(f"✅ 纯指令文件: {OUTPUT_CMD_FILE}")
    print(f"✅ 注释信息文件: {OUTPUT_INFO_FILE}")
    if failed:
        print(f"⚠️  剔除 {len(failed)} 个无兼容顺序组合")

if __name__ == "__main__":
    main()

