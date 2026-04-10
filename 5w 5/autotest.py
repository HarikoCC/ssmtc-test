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
    """检查当前目录下是否存在smtsim可执行文件"""
    if not os.path.exists("./smtsim"):
        print("错误：当前目录下未找到smtsim可执行文件！")
        sys.exit(1)
    if not os.access("./smtsim", os.X_OK):
        print("错误：smtsim文件没有可执行权限！请运行 chmod +x smtsim")
        sys.exit(1)

def create_logs_directory():
    """创建logs目录（如果不存在）"""
    if not os.path.exists("./logs"):
        os.makedirs("./logs")
        print("提示：已创建logs目录用于保存测试日志")

def generate_arg_combinations(arg_files, smt_count):
    """生成所有可能的.arg文件组合（长度为smt_count）"""
    if smt_count == 1:
        # 单线程模式：每个文件单独作为一个组合
        return [[f] for f in arg_files]
    else:
        # 多线程模式：生成所有长度为smt_count的组合
        return list(itertools.combinations(arg_files, smt_count))

def run_single_test(combination, combination_id):
    """执行单个smtsim测试组合，返回(是否成功, 日志文件路径, 组合信息)"""
    # 生成日志文件名（包含组合ID和时间戳，避免重名）
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    log_filename = f"smt{len(combination)}_test_{combination_id}_{timestamp}.log"
    log_file = os.path.join("./logs", log_filename)  # 日志文件路径指向./logs目录
    
    # 构建命令：./smtsim arg1.arg arg2.arg ...
    cmd = ["./smtsim"] + list(combination)
    
    try:
        # 执行smtsim命令，先捕获字节流，再安全解码
        result = subprocess.run(
            cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            timeout=None  # 无超时限制，等待测试完成
        )
        
        # 安全解码：遇到无法解码的字节用�替换，避免异常
        output = result.stdout.decode("utf-8", errors="replace")
        
        # 保存输出到日志文件
        with open(log_file, "w", encoding="utf-8") as f:
            f.write(f"测试组合：{' + '.join(combination)}\n")
            f.write(f"执行命令：{' '.join(cmd)}\n")
            f.write(f"{'='*50}\n\n")
            f.write(output)
        
        # 检查返回码
        if result.returncode == 0:
            return (True, log_file, combination)
        else:
            return (False, log_file, combination)
    
    except Exception as e:
        # 捕获异常（如文件不存在、权限问题等）
        with open(log_file, "w", encoding="utf-8") as f:
            f.write(f"测试组合：{' + '.join(combination)}\n")
            f.write(f"执行命令：{' '.join(cmd)}\n")
            f.write(f"{'='*50}\n\n")
            f.write(f"测试执行异常：{str(e)}\n")
        return (False, log_file, combination)

def main():
    # 解析命令行参数
    parser = argparse.ArgumentParser(description="自动并行运行smtsim SMT基准测试")
    parser.add_argument(
        "-s", "--smt", 
        type=int, 
        required=True, 
        help="SMT测试进程数量（例如：1=单线程，4=SMT4）"
    )
    parser.add_argument(
        "-j", "--jobs", 
        type=int, 
        default=4, 
        help="并行执行的smtsim进程数（默认：4）"
    )
    args = parser.parse_args()
    
    # 检查smtsim是否存在
    check_smtsim_exists()
    
    # 创建logs目录
    create_logs_directory()
    
    # 搜索当前目录所有.arg文件
    arg_files = glob.glob("*.arg")
    if not arg_files:
        print("错误：当前目录下未找到任何.arg文件！")
        sys.exit(1)
    
    # 检查SMT数量是否合法
    if args.smt < 1:
        print("错误：SMT测试进程数量必须大于等于1！")
        sys.exit(1)
    if args.smt > len(arg_files):
        print(f"错误：SMT测试进程数量({args.smt})不能大于.arg文件数量({len(arg_files)})！")
        sys.exit(1)
    
    # 生成所有可能的组合
    combinations = generate_arg_combinations(arg_files, args.smt)
    if not combinations:
        print("错误：未生成任何有效的测试组合！")
        sys.exit(1)
    
    print(f"========================================")
    print(f"找到 {len(arg_files)} 个测试文件：{', '.join(arg_files)}")
    print(f"SMT测试进程数量：{args.smt}")
    print(f"生成测试组合数：{len(combinations)}")
    print(f"并行执行进程数：{args.jobs}")
    print(f"日志保存目录：./logs")
    print(f"========================================")
    
    # 统计结果
    success_count = 0
    failed_count = 0
    failed_tests = []
    
    # 使用进程池并行执行测试
    with ProcessPoolExecutor(max_workers=args.jobs) as executor:
        # 提交所有任务
        future_to_comb = {
            executor.submit(run_single_test, comb, idx): comb 
            for idx, comb in enumerate(combinations)
        }
        
        # 处理完成的任务
        for future in as_completed(future_to_comb):
            comb = future_to_comb[future]
            try:
                success, log_file, comb_info = future.result()
                comb_str = " + ".join(comb_info)
                if success:
                    print(f"✅ 测试完成：{comb_str}（日志：{log_file}）")
                    success_count += 1
                else:
                    print(f"❌ 测试失败：{comb_str}（日志：{log_file}）")
                    failed_count += 1
                    failed_tests.append(comb_str)
            except Exception as e:
                comb_str = " + ".join(comb)
                print(f"❌ 测试异常：{comb_str}（错误：{str(e)}）")
                failed_count += 1
                failed_tests.append(comb_str)
    
    # 输出最终统计
    print(f"========================================")
    print(f"测试完成！")
    print(f"总组合数：{len(combinations)}")
    print(f"成功：{success_count} 个")
    print(f"失败：{failed_count} 个")
    if failed_tests:
        print(f"失败的测试组合：")
        for ft in failed_tests:
            print(f"  - {ft}")
    print(f"所有日志已保存到 ./logs 目录")
    print(f"========================================")

if __name__ == "__main__":
    main()

