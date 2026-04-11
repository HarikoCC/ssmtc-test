#!/usr/bin/env python3
import os
import glob
import csv
import re
from collections import defaultdict

try:
    from tabulate import tabulate
    HAS_TABULATE = True
except ImportError:
    HAS_TABULATE = False
    print("提示：pip install tabulate 可获得美观表格\n")

RESULT_DIR_PATTERN = r'^\d+$'

def scan_result_dirs():
    current_dir = os.getcwd()
    result_dirs = []
    
    for entry in os.listdir(current_dir):
        dir_path = os.path.join(current_dir, entry)
        if os.path.isdir(dir_path) and re.match(RESULT_DIR_PATTERN, entry):
            result_dirs.append(entry)
    
    result_dirs.sort(key=lambda x: int(re.search(r'\d+', x).group()))
    return result_dirs

def parse_filename(filename):
    base_name = os.path.splitext(os.path.basename(filename))[0]
    parts = base_name.split("_")
    if len(parts) % 2 != 0:
        return None
    try:
        process_list = [(parts[i], int(parts[i+1])) for i in range(0, len(parts), 2)]
    except ValueError:
        return None
    return len(process_list)

def parse_smt_result(file_path):
    try:
        with open(file_path, "r", encoding="utf-8") as f:
            lines = f.readlines()
    except:
        return None

    data = {
        "smt_num": 0,
        "total_ipc": 0.0,
        "hit_ratio": 0.0,
        "avg_delay": 0.0,
        "mshr_conflicts": 0,
        "realloc_cnt": 0,
        "bank_util_avg": 0.0,
        "total_cycles": 0
    }

    smt_num = parse_filename(file_path)
    if not smt_num or smt_num < 2:
        return None
    data["smt_num"] = smt_num

    current_section = None
    total_hits = total_accesses = 0
    for line in lines:
        line = line.strip()
        if not line:
            continue
        if line.startswith("[") and line.endswith("]"):
            current_section = line[1:-1]
            continue
        if "=" not in line or not current_section:
            continue

        key, value = line.split("=", 1)
        key, value = key.strip(), value.strip()
        try:
            val = float(value) if "." in value else int(value)
        except:
            continue

        if current_section == "GLOBAL_PERFORMANCE":
            if key == "total_ipc": data["total_ipc"] = val
            if key == "total_cycles": data["total_cycles"] = val
        elif current_section.startswith("MASTER_") and current_section.endswith("_L1D"):
            if key == "hits": total_hits += val
            if key == "accesses": total_accesses += val
        elif current_section == "L1D_BOTTLENECK":
            if key == "avg_delay": data["avg_delay"] = val
            if key == "mshr_conflicts": data["mshr_conflicts"] = val
            if key == "realloc_cnt": data["realloc_cnt"] = val
            if key == "bank_util":
                util = [float(x) for x in value.split()]
                data["bank_util_avg"] = sum(util)/len(util) if util else 0

    data["hit_ratio"] = (total_hits / total_accesses * 100) if total_accesses else 0
    return data

def load_smt_results(dir_path):
    results = {}
    if not os.path.exists(dir_path):
        print(f"错误：目录 {dir_path} 不存在")
        return results
    for f in glob.glob(os.path.join(dir_path, "*.txt")):
        fname = os.path.basename(f)
        res = parse_smt_result(f)
        if res:
            results[fname] = res
    return results

def get_common_files(all_results):
    if not all_results:
        return set()
    common = set(all_results[0].keys())
    for res in all_results[1:]:
        common &= set(res.keys())
    return common

def print_table(data, headers):
    if HAS_TABULATE:
        print(tabulate(data, headers=headers, tablefmt="grid"))
    else:
        print("\t".join(headers))
        for row in data:
            print("\t".join([str(x) for x in row]))

def main():
    print("=" * 80)
    print("           🔥 自动多Cache配置 SMT 性能对比工具 🔥")
    print("        支持任意数量 results1/results2/... 目录自动对比")
    print("=" * 80)

    cache_dirs = scan_result_dirs()
    if not cache_dirs:
        print("\n❌ 错误：未找到任何 results数字 格式的结果目录！")
        print("请将测试结果放在 results1、results2、results3... 文件夹中")
        return

    cache_count = len(cache_dirs)
    print(f"\n✅ 自动发现 {cache_count} 组Cache配置：")
    for i, dir_name in enumerate(cache_dirs, 1):
        print(f"   Cache{i}: {dir_name}")

    all_cache_results = []
    for dir_name in cache_dirs:
        res = load_smt_results(dir_name)
        all_cache_results.append(res)
        print(f"📊 加载 {dir_name}：{len(res)} 个有效测试文件")

    common_files = get_common_files(all_cache_results)
    if not common_files:
        print("\n❌ 错误：所有Cache目录中无相同的SMT测试文件，无法对比！")
        return
    print(f"\n🎯 找到 {len(common_files)} 组通用测试场景，开始对比...\n")

    headers = ["SMT测试场景", "SMT进程数"]
    for i in range(1, cache_count + 1):
        headers.extend([
            f"Cache{i}-IPC",
            f"Cache{i}-命中率(%)",
            f"Cache{i}-平均延迟",
            f"Cache{i}-MSHR冲突",
            f"Cache{i}-重分配次数",
            f"Cache{i}-Bank利用率",
            f"Cache{i}-总周期"
        ])
    for i in range(2, cache_count + 1):
        headers.extend([
            f"Cache{i} vs Cache1-IPC变化(%)",
            f"Cache{i} vs Cache1-命中率变化(%)",
            f"Cache{i} vs Cache1-延迟变化(%)"
        ])

    compare_data = []
    base_cache = all_cache_results[0]

    for fname in sorted(common_files):
        row = [fname, base_cache[fname]["smt_num"]]
        cache_data_list = []

        for idx, cache_res in enumerate(all_cache_results):
            data = cache_res[fname]
            cache_data_list.append(data)
            row.extend([
                f"{data['total_ipc']:.4f}",
                f"{data['hit_ratio']:.4f}",
                f"{data['avg_delay']:.4f}",
                data["mshr_conflicts"],
                data["realloc_cnt"],
                f"{data['bank_util_avg']:.6f}",
                int(data["total_cycles"])
            ])

        base_data = cache_data_list[0]
        for data in cache_data_list[1:]:
            ipc_change = (data["total_ipc"] - base_data["total_ipc"]) / base_data["total_ipc"] * 100 if base_data["total_ipc"] else 0
            hit_change = data["hit_ratio"] - base_data["hit_ratio"]
            delay_change = (data["avg_delay"] - base_data["avg_delay"]) / base_data["avg_delay"] * 100 if base_data["avg_delay"] else 0

            row.extend([f"{ipc_change:+.4f}%", f"{hit_change:+.4f}%", f"{delay_change:+.4f}%"])

        compare_data.append(row)

    print_table(compare_data, headers)

    csv_file = "multi_cache_smt_compare.csv"
    with open(csv_file, "w", encoding="utf-8-sig", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(headers)
        writer.writerows(compare_data)

    print(f"\n✅ 对比完成！结果已保存至: {csv_file}")
    print("=" * 80)

if __name__ == "__main__":
    main()

