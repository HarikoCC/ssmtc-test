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
    """检查当前目录下是否存在smtsim可执行文件，且具备执行权限"""
    if not os.path.exists("./smtsim"):
        print("错误：当前目录下未找到smtsim可执行文件！")
        sys.exit(1)
    if not os.access("./smtsim", os.X_OK):
        print("错误：smtsim文件没有可执行权限！请执行 chmod +x smtsim 命令添加权限")
        sys.exit(1)

def create_logs_directory():
    """创建logs日志目录（若不存在则自动创建）"""
    if not os.path.exists("./logs"):
        os.makedirs("./logs")
        print("提示：已创建logs目录，用于保存所有测试日志文件")

def get_file_base_name(filename):
    """
    提取文件的基础程序名，去除.arg/.arg2/.arg3/.arg4后缀
    """
    if filename.endswith(".arg4"):
        return filename[:-5]
    elif filename.endswith(".arg3"):
        return filename[:-5]
    elif filename.endswith(".arg2"):
        return filename[:-5]
    elif filename.endswith(".arg"):
        return filename[:-4]
    return filename

def is_combination_valid(combination):
    """
    检查测试组合是否合法：同一个基础程序名，在一个组合里只能出现一次
    """
    used_programs = set()
    for file in combination:
        base_name = get_file_base_name(file)
        if base_name in used_programs:
            return False
        used_programs.add(base_name)
    return True

def categorize_arg_files():
    """
    分类收集当前目录下的测试文件，按线程数归类
    """
    file_dict = {
        1: glob.glob("*.arg"),    # 1线程进程文件（后缀.arg）
        2: glob.glob("*.arg2"),   # 2线程进程文件（后缀.arg2）
        3: glob.glob("*.arg3"),   # 3线程进程文件（后缀.arg3）
        4: glob.glob("*.arg4")    # 4线程进程文件（后缀.arg4）
    }
    
    for thread_count in file_dict:
        file_dict[thread_count] = sorted(list(set(file_dict[thread_count])))
    
    return file_dict

def validate_and_generate_combinations(file_dict, scenario_type):
    """
    根据选择的工况类型，生成合规的测试组合
    【修改】：多线程文件在组合中排在前面
    """
    combinations = []
    
    if scenario_type == 1:
        # 工况1：1+1+1+1 (4个.arg)
        if len(file_dict[1]) < 4:
            print(f"错误：工况1（1+1+1+1）需要至少4个.arg文件，当前仅找到{len(file_dict[1])}个")
            sys.exit(1)
        for candidate_comb in itertools.combinations(file_dict[1], 4):
            if is_combination_valid(candidate_comb):
                combinations.append(candidate_comb)
        
    elif scenario_type == 2:
        # 工况2：1+1+2
        # 【修改】顺序调整为：[.arg2, .arg, .arg] (多线程优先)
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
                # 重新排序：把 .arg2 (p2) 放在最前面
                candidate_comb = (p2,) + p1
                if is_combination_valid(candidate_comb):
                    combinations.append(candidate_comb)
                
    elif scenario_type == 3:
        # 工况3：1+3
        # 【修改】顺序调整为：[.arg3, .arg] (多线程优先)
        if len(file_dict[1]) < 1:
            print(f"错误：工况3（1+3）需要至少1个.arg文件，当前仅找到{len(file_dict[1])}个")
            sys.exit(1)
        if len(file_dict[3]) < 1:
            print(f"错误：工况3（1+3）需要至少1个.arg3文件，当前仅找到{len(file_dict[3])}个")
            sys.exit(1)
        
        for f_arg, f_arg3 in itertools.product(file_dict[1], file_dict[3]):
            # 重新排序：把 .arg3 放在前面
            candidate_comb = (f_arg3, f_arg)
            if is_combination_valid(candidate_comb):
                combinations.append(candidate_comb)
        
    elif scenario_type == 4:
        # 工况4：2+2 (2个.arg2，顺序不变)
        if len(file_dict[2]) < 2:
            print(f"错误：工况4（2+2）需要至少2个.arg2文件，当前仅找到{len(file_dict[2])}个")
            sys.exit(1)
        for candidate_comb in itertools.combinations(file_dict[2], 2):
            if is_combination_valid(candidate_comb):
                combinations.append(candidate_comb)
        
    elif scenario_type == 5:
        # 工况5：4 (单个.arg4，顺序不变)
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

def run_single_test(combination, combination_id):
    """
    执行单组smtsim测试
    """
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    scenario_tag = f"smt4混合工况_{len(combination)}进程"
    log_filename = f"{scenario_tag}_测试{combination_id}_{timestamp}.log"
    log_file_path = os.path.join("./logs", log_filename)
    
    # 构建命令（此时 combination 内部顺序已是多线程优先）
    cmd = ["./smtsim"] + list(combination)
    
    try:
        result = subprocess.run(
            cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            timeout=None
        )
        
        output = result.stdout.decode("utf-8", errors="replace")
        
        with open(log_file_path, "w", encoding="utf-8") as f:
            f.write(f"测试组合（多线程优先）：{' + '.join(combination)}\n")
            f.write(f"执行命令：{' '.join(cmd)}\n")
            f.write(f"{'='*50}\n\n")
            f.write(output)
        
        return (result.returncode == 0, log_file_path, combination)
    
    except Exception as e:
        with open(log_file_path, "w", encoding="utf-8") as f:
            f.write(f"测试组合（多线程优先）：{' + '.join(combination)}\n")
            f.write(f"执行命令：{' '.join(cmd)}\n")
            f.write(f"{'='*50}\n\n")
            f.write(f"测试执行异常：{str(e)}\n")
        return (False, log_file_path, combination)

def main():
    parser = argparse.ArgumentParser(description="SMT-4混合负载自动化测试工具 (多线程优先启动版)")
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
    print("="*50)
    
    success_count = 0
    failed_count = 0
    failed_test_list = []
    
    with ProcessPoolExecutor(max_workers=args.jobs) as executor:
        future_to_comb = {
            executor.submit(run_single_test, comb, idx): comb 
            for idx, comb in enumerate(combinations)
        }
        
        for future in as_completed(future_to_comb):
            current_comb = future_to_comb[future]
            try:
                success, log_file, comb_info = future.result()
                comb_str = " + ".join(comb_info)
                if success:
                    print(f"✅ 测试成功：{comb_str}（日志：{log_file}）")
                    success_count += 1
                else:
                    print(f"❌ 测试失败：{comb_str}（日志：{log_file}）")
                    failed_count += 1
                    failed_test_list.append(comb_str)
            except Exception as e:
                comb_str = " + ".join(current_comb)
                print(f"⚠️  测试异常：{comb_str}（错误信息：{str(e)}）")
                failed_count += 1
                failed_test_list.append(comb_str)
    
    print("="*50)
    print("测试执行完成！最终统计：")
    print(f"  总测试数：{len(combinations)}")
    print(f"  成功数：{success_count}")
    print(f"  失败数：{failed_count}")
    if failed_test_list:
        print(f"  失败的测试组合：")
        for failed_comb in failed_test_list:
            print(f"    - {failed_comb}")
    print("="*50)

if __name__ == "__main__":
    main()

