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

# 固定基准目录名称，全局统一配置
BASE_CACHE_DIR = "share32"

def find_cache_dirs():
    current_dir = os.getcwd()
    all_valid_dirs = []
    
    # 扫描所有符合 配置目录/results 结构的文件夹
    for entry in os.listdir(current_dir):
        dir_path = os.path.join(current_dir, entry)
        results_subdir = os.path.join(dir_path, "results")
        if os.path.isdir(dir_path) and os.path.isdir(results_subdir):
            all_valid_dirs.append(entry)
    
    # 强制校验基准目录是否存在
    if BASE_CACHE_DIR not in all_valid_dirs:
        return []
    
    # 固定排序：基准目录永远放在第一位，其余目录按名称自然排序
    all_valid_dirs.remove(BASE_CACHE_DIR)
    all_valid_dirs.sort()
    final_dir_list = [BASE_CACHE_DIR] + all_valid_dirs
    
    return final_dir_list

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

def load_smt_results(cache_dir):
    results_dir = os.path.join(cache_dir, "results")
    results = {}
    if not os.path.exists(results_dir):
        print(f"错误：目录 {results_dir} 不存在")
        return results
    for f in glob.glob(os.path.join(results_dir, "*.txt")):
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

def print_missing_files(cache_dirs, all_cache_results):
    """打印两个目录中文件名不一致的部分"""
    if len(cache_dirs) < 2:
        return
        
    name1, name2 = cache_dirs[0], cache_dirs[1]
    set1 = set(all_cache_results[0].keys())
    set2 = set(all_cache_results[1].keys())
    
    only_in_1 = sorted(list(set1 - set2))
    only_in_2 = sorted(list(set2 - set1))
    
    if only_in_1 or only_in_2:
        print("\n" + "=" * 80)
        print("⚠️  【文件名差异诊断报告】")
        print("=" * 80)
        
        if only_in_1:
            print(f"\n❌ 仅在 {name1} 中存在（{len(only_in_1)} 个）：")
            for f in only_in_1:
                print(f"   - {f}")
                
        if only_in_2:
            print(f"\n❌ 仅在 {name2} 中存在（{len(only_in_2)} 个）：")
            for f in only_in_2:
                print(f"   - {f}")
        print("=" * 80 + "\n")

def main():
    print("=" * 80)
    print(f"    🔥 多Cache配置 SMT 性能对比工具（基准：{BASE_CACHE_DIR}）🔥")
    print("        支持任意数量 子目录/results 结构，统一与基准配置对比")
    print("=" * 80)

    cache_dirs = find_cache_dirs()
    if not cache_dirs:
        print(f"\n❌ 错误：未找到基准目录 {BASE_CACHE_DIR}！")
        print(f"请确保存在 {BASE_CACHE_DIR}/results 目录结构作为对比基准")
        print("其余待对比配置也需遵循 配置名/results/*.txt 的目录结构")
        return

    cache_count = len(cache_dirs)
    print(f"\n✅ 自动发现 {cache_count} 组Cache配置：")
    for i, dir_name in enumerate(cache_dirs, 1):
        if i == 1:
            print(f"   {dir_name} (对比基准)")
        else:
            print(f"   {dir_name}")

    # 加载所有配置的测试结果
    all_cache_results = []
    for dir_name in cache_dirs:
        res = load_smt_results(dir_name)
        all_cache_results.append(res)
        print(f"📊 加载 {dir_name}/results：{len(res)} 个有效测试文件")

    # 校验基准目录是否有有效数据
    base_results = all_cache_results[0]
    if len(base_results) == 0:
        print(f"\n❌ 错误：基准目录 {BASE_CACHE_DIR}/results 中未找到任何有效SMT测试文件！")
        return

    # 【新增】调用诊断函数，查看文件名差异
    print_missing_files(cache_dirs, all_cache_results)

    # 校验所有配置的公共测试文件
    common_files = get_common_files(all_cache_results)
    if not common_files:
        print("\n❌ 错误：所有配置目录中无相同的SMT测试文件，无法对比！")
        return
    print(f"\n🎯 找到 {len(common_files)} 组通用测试场景，开始对比...\n")

    # 生成表头
    headers = ["SMT测试场景", "SMT进程数"]
    for dir_name in cache_dirs:
        headers.extend([
            f"{dir_name}-IPC",
            f"{dir_name}-命中率(%)",
            f"{dir_name}-平均延迟",
            f"{dir_name}-MSHR冲突",
            f"{dir_name}-重分配次数",
            f"{dir_name}-Bank利用率",
            f"{dir_name}-总周期"
        ])
    
    # 生成对比列（所有配置均与share32基准对比）
    for dir_name in cache_dirs[1:]:
        headers.extend([
            f"{dir_name} vs {BASE_CACHE_DIR}-IPC变化(%)",
            f"{dir_name} vs {BASE_CACHE_DIR}-命中率变化(%)",
            f"{dir_name} vs {BASE_CACHE_DIR}-延迟变化(%)"
        ])

    # 生成对比数据
    compare_data = []
    base_cache_data = all_cache_results[0]

    for fname in sorted(common_files):
        row = [fname, base_cache_data[fname]["smt_num"]]
        cache_data_list = []

        # 填充所有配置的原始数据
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

        # 计算与基准的性能变化（所有非基准配置均与share32对比）
        base_data = cache_data_list[0]
        for data in cache_data_list[1:]:
            ipc_change = (data["total_ipc"] - base_data["total_ipc"]) / base_data["total_ipc"] * 100 if base_data["total_ipc"] else 0
            hit_change = data["hit_ratio"] - base_data["hit_ratio"]
            delay_change = (data["avg_delay"] - base_data["avg_delay"]) / base_data["avg_delay"] * 100 if base_data["avg_delay"] else 0

            row.extend([f"{ipc_change:+.4f}%", f"{hit_change:+.4f}%", f"{delay_change:+.4f}%"])

        compare_data.append(row)

    # 打印表格
    print_table(compare_data, headers)

    # 导出CSV
    csv_file = "multi_cache_smt_compare.csv"
    with open(csv_file, "w", encoding="utf-8-sig", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(headers)
        writer.writerows(compare_data)

    print(f"\n✅ 对比完成！所有数据均以 {BASE_CACHE_DIR} 为基准")
    print(f"✅ 结果已保存至: {csv_file}")
    print("=" * 80)

if __name__ == "__main__":
    main()

