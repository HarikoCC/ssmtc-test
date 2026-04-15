#!/usr/bin/env python3
import argparse
import glob
import subprocess
import os
import sys
import itertools
from concurrent.futures import ProcessPoolExecutor, as_completed
from datetime import datetime

def check_smtsim_exists():
    if not os.path.exists("./smtsim"):
        print("错误：当前目录下未找到smtsim可执行文件！")
        sys.exit(1)
    if not os.access("./smtsim", os.X_OK):
        print("错误：smtsim文件没有可执行权限！请执行 chmod +x smtsim 命令添加权限")
        sys.exit(1)

def create_logs_directory():
    if not os.path.exists("./logs"):
        os.makedirs("./logs")
        print("提示：已创建logs目录，用于保存所有测试日志文件")

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
    """
    获取文件的线程数：.arg4->4, .arg3->3, .arg2->2, .arg->1
    """
    if filename.endswith(".arg4"):
        return 4
    elif filename.endswith(".arg3"):
        return 3
    elif filename.endswith(".arg2"):
        return 2
    else:
        return 1

def format_file_token(filename):
    """
    【核心修改】将单个文件格式化为 "程序名_线程数" 的形式
    例如：gcc-scilab.arg2 -> gcc-scilab_2
    """
    base_name = get_file_base_name(filename)
    thread_count = get_file_thread_count(filename)
    return f"{base_name}_{thread_count}"

def generate_log_filename_base(perm):
    """
    【核心修改】根据实际启动顺序的排列，生成日志文件名的主体部分
    例如：(cacherand.arg2, crafty.arg, gcc-expr.arg) -> "cacherand_2_crafty_1_gcc-expr_1"
    """
    tokens = [format_file_token(f) for f in perm]
    return "_".join(tokens)

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
    
    for thread_count in file_dict:
        file_dict[thread_count] = sorted(list(set(file_dict[thread_count])))
    
    return file_dict

def validate_and_generate_combinations(file_dict, scenario_type):
    combinations = []
    
    if scenario_type == 1:
        if len(file_dict[1]) < 4:
            print(f"错误：工况1（1+1+1+1）需要至少4个.arg文件，当前仅找到{len(file_dict[1])}个")
            sys.exit(1)
        for candidate_comb in itertools.combinations(file_dict[1], 4):
            if is_combination_valid(candidate_comb):
                combinations.append(candidate_comb)
        
    elif scenario_type == 2:
        if len(file_dict[1]) < 2:
            print(f"错误：工况2（1+1+2）需要至少2个.arg文件，当前仅找到{len(file_dict[1])}个")
            sys.exit(1)
        if len(file_dict[2]) < 1:
            print(f"错误：工况2（1+1+2）需要至少1个.arg2文件，当前仅找到{len(file_dict[2])}个")
            sys.exit(1)
        
        part_1thread = list(itertools.combinations(file_dict[1], 2))
        part_2thread = file_dict[2]
        
        for p1 in part_1thread:
            for p2 in part_2thread:
                candidate_comb = (p2,) + p1
                if is_combination_valid(candidate_comb):
                    combinations.append(candidate_comb)
                
    elif scenario_type == 3:
        if len(file_dict[1]) < 1:
            print(f"错误：工况3（1+3）需要至少1个.arg文件，当前仅找到{len(file_dict[1])}个")
            sys.exit(1)
        if len(file_dict[3]) < 1:
            print(f"错误：工况3（1+3）需要至少1个.arg3文件，当前仅找到{len(file_dict[3])}个")
            sys.exit(1)
        
        for f_arg, f_arg3 in itertools.product(file_dict[1], file_dict[3]):
            candidate_comb = (f_arg3, f_arg)
            if is_combination_valid(candidate_comb):
                combinations.append(candidate_comb)
        
    elif scenario_type == 4:
        if len(file_dict[2]) < 2:
            print(f"错误：工况4（2+2）需要至少2个.arg2文件，当前仅找到{len(file_dict[2])}个")
            sys.exit(1)
        for candidate_comb in itertools.combinations(file_dict[2], 2):
            if is_combination_valid(candidate_comb):
                combinations.append(candidate_comb)
        
    elif scenario_type == 5:
        if len(file_dict[4]) < 1:
            print(f"错误：工况5（4）需要至少1个.arg4文件，当前仅找到{len(file_dict[4])}个")
            sys.exit(1)
        combinations = [(f,) for f in file_dict[4]]
        
    else:
        print("错误：无效的工况类型！请选择1-5之间的数字")
        sys.exit(1)
        
    if not combinations:
        print("错误：未生成任何有效的测试组合！")
        sys.exit(1)
        
    return combinations

def generate_sorted_permutations(combination):
    unique_perms = list(set(itertools.permutations(combination)))
    
    def permutation_score(perm):
        score = 0
        for i, file in enumerate(perm):
            weight = get_file_thread_weight(file)
            score += weight * (10 - i)
        return score
    
    unique_perms.sort(key=permutation_score, reverse=True)
    return unique_perms

def run_single_test_once(perm, combination_id, retry_num, scenario_tag):
    """
    修改：接收 perm（实际启动顺序），并基于此生成日志文件名
    """
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    
    # 【核心修改】生成新格式的日志文件名
    log_base_name = generate_log_filename_base(perm)
    retry_suffix = f"_retry{retry_num}" if retry_num > 0 else ""
    log_filename = f"{log_base_name}_测试{combination_id}_{timestamp}{retry_suffix}.log"
    log_file_path = os.path.join("./logs", log_filename)
    
    cmd = ["./smtsim"] + list(perm)
    
    try:
        result = subprocess.run(
            cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            timeout=None
        )
        
        output = result.stdout.decode("utf-8", errors="replace")
        
        with open(log_file_path, "w", encoding="utf-8") as f:
            f.write(f"测试启动顺序：{' + '.join(perm)}\n")
            f.write(f"执行命令：{' '.join(cmd)}\n")
            f.write(f"重试次数：{retry_num}\n")
            f.write(f"{'='*50}\n\n")
            f.write(output)
        
        return (result.returncode == 0, log_file_path, perm)
    
    except Exception as e:
        with open(log_file_path, "w", encoding="utf-8") as f:
            f.write(f"测试启动顺序：{' + '.join(perm)}\n")
            f.write(f"执行命令：{' '.join(cmd)}\n")
            f.write(f"重试次数：{retry_num}\n")
            f.write(f"{'='*50}\n\n")
            f.write(f"测试执行异常：{str(e)}\n")
        return (False, log_file_path, perm)

def run_test_with_permutation_retry(combination, combination_id):
    scenario_tag = f"smt4混合工况_{len(combination)}进程"
    
    sorted_perms = generate_sorted_permutations(combination)
    total_perms = len(sorted_perms)
    
    last_log_path = ""
    tried_orders = []
    
    for retry_num, perm in enumerate(sorted_perms):
        perm_str = " + ".join(perm)
        tried_orders.append(perm_str)
        
        success, log_path, _ = run_single_test_once(perm, combination_id, retry_num, scenario_tag)
        last_log_path = log_path
        
        if success:
            return (True, log_path, combination, perm, tried_orders)
    
    return (False, last_log_path, combination, None, tried_orders)

def main():
    parser = argparse.ArgumentParser(description="SMT-4混合负载自动化测试工具 (日志名格式化版)")
    parser.add_argument(
        "-s", "--scenario", 
        type=int, 
        required=True, 
        help="测试工况编号（1-5）：1=1+1+1+1（4个单线程）、2=1+1+2（2单1双）、3=1+3（1单1三线程）、4=2+2（2个双线程）、5=4（1个四线程）"
    )
    parser.add_argument(
        "-j", "--jobs", 
        type=int, 
        default=4, 
        help="并行执行的smtsim进程数，默认值为4"
    )
    args = parser.parse_args()
    
    check_smtsim_exists()
    create_logs_directory()
    file_dict = categorize_arg_files()
    
    print("="*50)
    print("当前目录测试文件统计：")
    print(f"  1线程进程(.arg)：{len(file_dict[1])} 个")
    print(f"  2线程进程(.arg2)：{len(file_dict[2])} 个")
    print(f"  3线程进程(.arg3)：{len(file_dict[3])} 个")
    print(f"  4线程进程(.arg4)：{len(file_dict[4])} 个")
    
    combinations = validate_and_generate_combinations(file_dict, args.scenario)
    
    scenario_name_map = {
        1: "1+1+1+1（4个单线程进程）",
        2: "1+1+2（2个单线程+1个双线程进程）",
        3: "1+3（1个单线程+1个三线程进程）",
        4: "2+2（2个双线程进程）",
        5: "4（1个四线程进程）"
    }
    
    print("="*50)
    print(f"测试工况：{args.scenario} - {scenario_name_map[args.scenario]}")
    print(f"总测试组合数：{len(combinations)}")
    print(f"并行执行进程数：{args.jobs}")
    print(f"日志保存目录：./logs")
    print(f"日志文件名格式：程序名_线程数_程序名_线程数_测试ID_时间戳.log")
    print("="*50)
    
    success_count = 0
    success_with_retry_count = 0
    failed_count = 0
    failed_test_list = []
    
    with ProcessPoolExecutor(max_workers=args.jobs) as executor:
        future_to_comb = {
            executor.submit(run_test_with_permutation_retry, comb, idx): comb 
            for idx, comb in enumerate(combinations)
        }
        
        for future in as_completed(future_to_comb):
            current_comb = future_to_comb[future]
            try:
                success, log_file, orig_comb, final_order, tried_orders = future.result()
                orig_comb_str = " + ".join(orig_comb)
                
                if success:
                    retry_info = ""
                    final_idx = tried_orders.index(" + ".join(final_order))
                    if final_idx > 0:
                        retry_info = f" (重试 {final_idx} 次后成功)"
                        success_with_retry_count += 1
                    
                    # 打印时提取简洁的文件名
                    simple_log_name = os.path.basename(log_file)
                    print(f"✅ 测试成功：{simple_log_name}{retry_info}")
                    success_count += 1
                else:
                    simple_log_name = os.path.basename(log_file)
                    print(f"❌ 测试失败：{orig_comb_str}（已尝试所有排列，最新日志：{simple_log_name}）")
                    failed_count += 1
                    failed_test_list.append(orig_comb_str)
            except Exception as e:
                orig_comb_str = " + ".join(current_comb)
                print(f"⚠️  测试异常：{orig_comb_str}（错误信息：{str(e)}）")
                failed_count += 1
                failed_test_list.append(orig_comb_str)
    
    print("="*50)
    print("测试执行完成！最终统计：")
    print(f"  总测试数：{len(combinations)}")
    print(f"  成功数：{success_count}（其中 {success_with_retry_count} 个通过调换启动顺序后成功）")
    print(f"  失败数：{failed_count}")
    print("="*50)

if __name__ == "__main__":
    main()

