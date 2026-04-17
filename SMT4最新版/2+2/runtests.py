#!/usr/bin/env python3
import argparse
import subprocess
import os
import sys
from concurrent.futures import ProcessPoolExecutor, as_completed
from datetime import datetime

# ================= 配置区域 =================
CMD_FILE = "test_commands.txt"       
LOG_DIR_NAME = "logs"               
# ============================================

class TeeLogger:
    def __init__(self, filename):
        self.terminal = sys.stdout
        self.log_file = open(filename, "w", encoding="utf-8")

    def write(self, message):
        self.terminal.write(message)
        self.log_file.write(message)
        self.flush()

    def flush(self):
        self.terminal.flush()
        self.log_file.flush()

    def close(self):
        if not self.log_file.closed:
            self.log_file.close()

def load_valid_commands():
    """读取所有有效指令（适配新格式：./smtsim ...）"""
    if not os.path.exists(CMD_FILE):
        print(f"错误：当前目录未找到 {CMD_FILE}")
        sys.exit(1)

    with open(CMD_FILE, "r", encoding="utf-8") as f:
        lines = [line.strip() for line in f if line.strip() and not line.strip().startswith("#")]

    if not lines:
        print(f"错误：{CMD_FILE} 中无有效指令")
        sys.exit(1)
    return lines

def get_all_cache_dirs():
    """自动扫描所有包含 smtsim 的子目录"""
    cache_dirs = []
    for entry in os.listdir("."):
        if os.path.isdir(entry):
            sim_path = os.path.join(entry, "smtsim")
            if os.path.exists(sim_path) and os.access(sim_path, os.X_OK):
                cache_dirs.append(entry)
    if not cache_dirs:
        print("错误：未找到任何包含 smtsim 的Cache子目录")
        sys.exit(1)
    return sorted(cache_dirs)

# 直接执行命令（已适配 ./smtsim 格式）
def run_single_cmd(cache_dir, cmd, idx, total):
    log_root = os.path.join(cache_dir, LOG_DIR_NAME)
    os.makedirs(log_root, exist_ok=True)
    
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    log_filename = f"{cache_dir}_task{idx}_{timestamp}.log"
    log_path = os.path.join(log_root, log_filename)

    # 直接使用命令拆分，适配新格式 ./smtsim ...
    cmd_parts = cmd.split()
    try:
        # 进入Cache目录执行，完美匹配手动操作
        result = subprocess.run(
            cmd_parts,
            cwd=cache_dir,            
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            timeout=None,
            encoding="utf-8",
            errors="replace"
        )

        with open(log_path, "w", encoding="utf-8") as f:
            f.write(f"===== 执行信息 =====\n")
            f.write(f"Cache目录：{cache_dir}\n")
            f.write(f"执行命令：{cmd}\n")
            f.write(f"执行时间：{datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
            f.write(f"返回码：{result.returncode}\n")
            f.write(f"===== 输出内容 =====\n")
            f.write(result.stdout)

        if result.returncode == 0:
            return (True, f"✅ [{idx}/{total}] {cache_dir} 执行成功 | {log_filename}", log_path)
        else:
            return (False, f"❌ [{idx}/{total}] {cache_dir} 执行失败 | {log_filename}", log_path)

    except Exception as e:
        with open(log_path, "w", encoding="utf-8") as f:
            f.write(f"===== 执行信息 =====\n")
            f.write(f"Cache目录：{cache_dir}\n")
            f.write(f"执行命令：{cmd}\n")
            f.write(f"执行时间：{datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
            f.write(f"异常信息：{str(e)}\n")
        return (False, f"⚠️ [{idx}/{total}] {cache_dir} 执行异常 | {log_filename}", log_path)

def run_commands_for_cache(cache_dir, commands, parallel_jobs):
    """单个Cache目录：并行执行所有命令"""
    log_root = os.path.join(cache_dir, LOG_DIR_NAME)
    os.makedirs(log_root, exist_ok=True)
    total = len(commands)
    success = 0
    failed = 0
    failed_list = []

    print(f"\n========================================")
    print(f"开始执行 Cache：{cache_dir} | 共 {total} 条指令 | 并行数：{parallel_jobs}")
    print(f"日志目录：{log_root}")
    print(f"========================================")

    with ProcessPoolExecutor(max_workers=parallel_jobs) as pool:
        future_map = {}
        for idx, cmd in enumerate(commands, 1):
            future = pool.submit(run_single_cmd, cache_dir, cmd, idx, total)
            future_map[future] = (cmd, idx)

        for future in as_completed(future_map):
            cmd, idx = future_map[future]
            res_success, msg, log_path = future.result()
            print(msg)
            
            if res_success:
                success +=1
            else:
                failed +=1
                failed_list.append({"cmd": cmd, "log": log_path})

    return {
        "cache": cache_dir,
        "total": total,
        "success": success,
        "failed": failed,
        "failed_list": failed_list
    }

def main():
    start_ts = datetime.now().strftime("%Y%m%d_%H%M%S")
    summary_log = f"run_summary_{start_ts}.log"
    tee = TeeLogger(summary_log)
    sys.stdout = tee

    parser = argparse.ArgumentParser(description="无超时自动测试：同目录并行 / 跨目录串行")
    parser.add_argument("-j", "--jobs", type=int, default=4, help="同一Cache目录下的并行指令数")
    args = parser.parse_args()

    # 1. 读取新格式的指令清单
    all_cmds = load_valid_commands()
    # 2. 扫描所有Cache目录
    cache_dirs = get_all_cache_dirs()

    print("="*60)
    print("SMTSIM 自动测试执行工具（适配新指令格式）")
    print("执行策略：不同Cache目录 ➜ 串行 | 同目录指令 ➜ 并行")
    print(f"指令文件：{CMD_FILE}")
    print(f"总有效指令：{len(all_cmds)} 条")
    print(f"Cache目录总数：{len(cache_dirs)} 个")
    print(f"单目录并行数：{args.jobs}")
    print(f"日志目录：每个Cache下的 {LOG_DIR_NAME}/")
    print("="*60)

    all_results = []
    # 核心：跨目录串行执行，每个目录执行全部指令
    for cache in cache_dirs:
        res = run_commands_for_cache(cache, all_cmds, args.jobs)
        all_results.append(res)

    # 全局总结
    print("\n\n" + "="*80)
    print("【全局执行总结】")
    print("="*80)
    total_all = 0
    total_success = 0
    total_failed = 0

    for res in all_results:
        total_all += res["total"]
        total_success += res["success"]
        total_failed += res["failed"]
        print(f"Cache {res['cache']}：总计{res['total']} | 成功{res['success']} | 失败{res['failed']}")

    print("-"*80)
    print(f"总计：指令{total_all}条 | 成功{total_success}条 | 失败{total_failed}条")

    if total_failed > 0:
        print("\n【失败指令详情】")
        for res in all_results:
            if res["failed"] <= 0:
                continue
            for fail in res["failed_list"]:
                print(f"Cache：{res['cache']}")
                print(f"命令：{fail['cmd']}")
                print(f"日志：{fail['log']}")
                print("-"*40)

    print(f"\n完整总结日志：{summary_log}")
    sys.stdout = tee.terminal
    tee.close()

if __name__ == "__main__":
    main()

