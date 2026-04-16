#!/usr/bin/env python3
import os
import glob
import csv
from collections import defaultdict

# 可选：安装 tabulate 可获得更美观的控制台表格输出
# pip install tabulate
try:
    from tabulate import tabulate
    HAS_TABULATE = True
except ImportError:
    HAS_TABULATE = False
    print("提示：安装 tabulate 库可获得更美观的表格输出，执行 pip install tabulate 即可安装")

def parse_filename(filename):
    """
    解析结果文件名，提取 SMT 进程数和进程列表
    文件名格式：{进程 1}_{线程数}_{进程 2}_{线程数}_....txt
    返回：smt_num(SMT 进程数), process_list(列表，每个元素为 (进程名，线程数))
    格式错误返回 None, None
    """
    base_name = os.path.splitext(os.path.basename(filename))[0]
    parts = base_name.split("_")
    
    # 文件名必须是 进程名_线程数 成对出现
    if len(parts) % 2 != 0:
        return None, None
    
    process_list = []
    for i in range(0, len(parts), 2):
        proc_name = parts[i]
        try:
            thread_num = int(parts[i+1])
        except ValueError:
            return None, None
        process_list.append((proc_name, thread_num))
    
    smt_num = len(process_list)
    return smt_num, process_list

def parse_result_file(file_path):
    """
    解析单个结果文件，提取所有性能指标
    返回：解析后的文件数据字典，解析失败返回 None
    注意：适配最新格式，延迟相关指标在 [L1D_BOTTLENECK] 中，不在 [MASTER_X_L1D] 中
    """
    file_data = {
        "file_path": file_path,
        "filename": os.path.basename(file_path),
        "smt_num": 0,
        "process_list": [],
        "global_perf": {},
        "thread_metrics": [],
        "bottleneck": {}
    }

    # 先解析文件名
    smt_num, process_list = parse_filename(file_data["filename"])
    if smt_num is None:
        print(f"警告：文件 {file_data['filename']} 命名格式不符合要求，跳过")
        return None
    file_data["smt_num"] = smt_num
    file_data["process_list"] = process_list

    # 解析文件内容
    try:
        with open(file_path, "r", encoding="utf-8") as f:
            lines = f.readlines()
    except Exception as e:
        print(f"错误：读取文件 {file_data['filename']} 失败：{str(e)}")
        return None

    current_section = None
    for line in lines:
        line = line.strip()
        if not line:
            continue
        
        # 识别段标记
        if line.startswith("[") and line.endswith("]"):
            current_section = line[1:-1]
            continue
        
        # 解析键值对
        if "=" in line and current_section:
            key, value = line.split("=", 1)
            key = key.strip()
            value = value.strip()

            # 数值类型转换
            try:
                if "." in value:
                    value = float(value)
                else:
                    value = int(value)
            except ValueError:
                pass

            # 按段分类存储
            if current_section == "GLOBAL_PERFORMANCE":
                file_data["global_perf"][key] = value
            
            elif current_section.startswith("MASTER_") and current_section.endswith("_L1D"):
                try:
                    thread_idx = int(current_section.split("_")[1])
                except ValueError:
                    continue
                while len(file_data["thread_metrics"]) <= thread_idx:
                    file_data["thread_metrics"].append({})
                file_data["thread_metrics"][thread_idx][key] = value
            
            elif current_section == "L1D_BOTTLENECK":
                file_data["bottleneck"][key] = value

    # 特殊处理 bank_util，转换为 float 列表
    if "bank_util" in file_data["bottleneck"]:
        try:
            bank_util_list = [float(x) for x in file_data["bottleneck"]["bank_util"].split()]
            file_data["bottleneck"]["bank_util"] = bank_util_list
            file_data["bottleneck"]["bank_util_avg"] = sum(bank_util_list) / len(bank_util_list)
        except:
            pass

    return file_data

def print_table(data, headers, tablefmt="simple"):
    """统一的表格输出函数，兼容有无 tabulate 的情况"""
    if HAS_TABULATE:
        print(tabulate(data, headers=headers, tablefmt=tablefmt))
    else:
        # 无 tabulate 时的简易表格输出
        print("\t".join(headers))
        for row in data:  # 【修复】这里之前缺少了 data
            print("\t".join([str(x) for x in row]))

def safe_divide(numerator, denominator, default=0.0):
    """安全除法，避免除零错误"""
    try:
        if denominator == 0:
            return default
        return numerator / denominator
    except:
        return default

def format_value(val, decimal_places=4):
    """格式化数值，避免 CSV 解析问题"""
    if val is None:
        return ""
    if isinstance(val, str):
        return val
    if isinstance(val, float):
        return f"{val:.{decimal_places}f}"
    return str(val)

def main():
    # 1. 检查 results 目录是否存在
    results_dir = "./results"
    if not os.path.exists(results_dir):
        print(f"错误：结果目录 {results_dir} 不存在！")
        return
    
    # 2. 扫描所有 txt 结果文件
    result_files = glob.glob(os.path.join(results_dir, "*.txt"))
    if not result_files:
        print(f"错误：{results_dir} 目录下未找到任何.txt 结果文件！")
        return
    
    print(f"========================================")
    print(f"共扫描到 {len(result_files)} 个结果文件，开始解析...")
    print(f"========================================")

    # 3. 解析所有文件，分类存储
    single_run_baseline = {}
    smt_test_results = []
    parse_failed_count = 0

    for file_path in result_files:
        file_data = parse_result_file(file_path)
        if not file_data:  # 【修复】这里之前缺少了 data
            parse_failed_count += 1
            continue
        
        if file_data["smt_num"] == 1:
            proc_name = file_data["process_list"][0][0]
            if file_data["thread_metrics"]:
                single_run_baseline[proc_name] = {
                    "global": file_data["global_perf"],
                    "l1d": file_data["thread_metrics"][0],
                    "bottleneck": file_data["bottleneck"]
                }
        else:
            smt_test_results.append(file_data)

    # 4. 输出统计结果
    print(f"\n========================================")
    print(f"解析完成！成功解析 {len(result_files)-parse_failed_count} 个文件，失败 {parse_failed_count} 个")
    print(f"单进程基准测试数量：{len(single_run_baseline)} 个")
    print(f"SMT 多进程测试数量：{len(smt_test_results)} 个")
    print(f"========================================")

    # --------------------------
    # 4.1 单进程基准性能汇总
    # --------------------------
    print(f"\n==================== 一、单进程单独运行基准性能汇总 ====================")
    single_table_data = []
    if single_run_baseline:
        single_headers = [
            "进程名", "总周期数", "总 IPC", 
            "L1D 访问次数", "L1D Miss 数", "L1D 命中率 (%)", 
            "平均访存延迟", "总访存延迟", "总访存数", "MSHR 冲突次数"
        ]
        for proc_name, data in single_run_baseline.items():
            l1d = data["l1d"]
            bottleneck = data["bottleneck"]
            single_table_data.append([
                proc_name,
                data["global"].get("total_cycles", ""),
                data["global"].get("total_ipc", ""),
                l1d.get("accesses", ""),
                l1d.get("misses", ""),
                format_value(l1d.get("hit_ratio", 0), 4),
                format_value(bottleneck.get("avg_delay", 0), 4),
                bottleneck.get("total_delay", ""),
                bottleneck.get("access_cnt", ""),
                bottleneck.get("mshr_conflicts", "")
            ])
        print_table(single_table_data, single_headers)
    else:
        print("未找到单进程基准测试文件")

    # --------------------------
    # 4.2 SMT 全局全维度预期 vs 实际汇总
    # --------------------------
    print(f"\n==================== 二、SMT 全局全维度预期 vs 实际性能汇总 ====================")
    print("【说明】预期值=组内所有进程单跑无竞争时的理想值之和/加权平均；实际值=SMT 运行实测值")
    smt_global_table = []
    if smt_test_results:
        smt_global_headers = [
            "测试文件名", "SMT 进程数", 
            "预期总 IPC", "实际总 IPC", "IPC 差异", "IPC 差异率 (%)",
            "预期全局命中率 (%)", "实际全局命中率 (%)", "命中率差异",
            "预期平均延迟", "实际平均延迟", "延迟差异", "延迟差异率 (%)",
            "预期总 MSHR 冲突", "实际总 MSHR 冲突", "冲突差异",
            "总周期数", "Bank 平均利用率"
        ]
        for test in smt_test_results:
            expected_total_ipc = 0.0
            expected_total_hits = 0
            expected_total_accesses = 0
            actual_total_hits = 0
            actual_total_accesses = 0
            expected_total_latency = 0
            expected_total_dacc_count = 0
            expected_total_mshr = 0
            actual_total_mshr = test["bottleneck"].get("mshr_conflicts", 0)

            missing_baseline = False
            for idx, (proc_name, _) in enumerate(test["process_list"]):
                baseline = single_run_baseline.get(proc_name)
                if not baseline or \
                   "total_ipc" not in baseline["global"] or \
                   not baseline["l1d"] or \
                   "mshr_conflicts" not in baseline["bottleneck"] or \
                   "total_delay" not in baseline["bottleneck"]:
                    missing_baseline = True
                    break
                
                expected_total_ipc += baseline["global"]["total_ipc"]
                expected_total_hits += baseline["l1d"].get("hits", 0)
                expected_total_accesses += baseline["l1d"].get("accesses", 0)
                expected_total_latency += baseline["bottleneck"].get("total_delay", 0)
                expected_total_dacc_count += baseline["bottleneck"].get("access_cnt", 0)
                expected_total_mshr += baseline["bottleneck"].get("mshr_conflicts", 0)

                if idx < len(test["thread_metrics"]):
                    smt_l1d = test["thread_metrics"][idx]
                    actual_total_hits += smt_l1d.get("hits", 0)
                    actual_total_accesses += smt_l1d.get("accesses", 0)
            
            actual_total_latency = test["bottleneck"].get("total_delay", 0)
            actual_total_dacc_count = test["bottleneck"].get("access_cnt", 0)
            actual_total_ipc = test["global_perf"].get("total_ipc")
            
            expected_hit_ratio = safe_divide(expected_total_hits, expected_total_accesses) * 100
            actual_hit_ratio = safe_divide(actual_total_hits, actual_total_accesses) * 100
            hit_ratio_diff = actual_hit_ratio - expected_hit_ratio
            
            expected_avg_latency = safe_divide(expected_total_latency, expected_total_dacc_count)
            actual_avg_latency = safe_divide(actual_total_latency, actual_total_dacc_count)
            latency_diff = actual_avg_latency - expected_avg_latency
            latency_diff_rate = safe_divide(latency_diff, expected_avg_latency) * 100
            
            ipc_diff = actual_total_ipc - expected_total_ipc if actual_total_ipc is not None else 0
            ipc_diff_rate = safe_divide(ipc_diff, expected_total_ipc) * 100
            mshr_diff = actual_total_mshr - expected_total_mshr

            if missing_baseline:
                row_data = [
                    test["filename"], test["smt_num"],
                    "缺少基准", format_value(actual_total_ipc, 4) if actual_total_ipc is not None else "", "", "",
                    "缺少基准", format_value(actual_hit_ratio, 4), "",
                    "缺少基准", format_value(actual_avg_latency, 4), "", "",
                    "缺少基准", actual_total_mshr, "",
                    test["global_perf"].get("total_cycles", ""),
                    format_value(test["bottleneck"].get("bank_util_avg", 0), 6)
                ]
            else:
                row_data = [
                    test["filename"], test["smt_num"],
                    format_value(expected_total_ipc, 4), format_value(actual_total_ipc, 4) if actual_total_ipc is not None else "",
                    f"{ipc_diff:+.4f}", f"{ipc_diff_rate:+.2f}%",
                    format_value(expected_hit_ratio, 4), format_value(actual_hit_ratio, 4), f"{hit_ratio_diff:+.4f}",
                    format_value(expected_avg_latency, 4), format_value(actual_avg_latency, 4), f"{latency_diff:+.4f}", f"{latency_diff_rate:+.2f}%",
                    expected_total_mshr, actual_total_mshr, f"{mshr_diff:+d}",
                    test["global_perf"].get("total_cycles", ""),
                    format_value(test["bottleneck"].get("bank_util_avg", 0), 6)
                ]
            smt_global_table.append(row_data)
        print_table(smt_global_table, smt_global_headers)
    else:
        print("未找到 SMT 多进程测试文件")

    # --------------------------
    # 4.3 SMT 进程级明细预期 vs 实际对比
    # --------------------------
    print(f"\n==================== 三、SMT 进程级明细预期 vs 实际性能对比 ====================")
    print("【说明】预期值=该进程单独运行时的基准值；实际值=该进程在 SMT 环境下的实测值")
    print("【注意】最新格式中延迟指标为全局统计，SMT 实际延迟对所有进程相同")
    compare_table = []
    if smt_test_results and single_run_baseline:
        compare_headers = [
            "SMT 测试场景", "进程名",
            "预期命中率 (%)", "实际命中率 (%)", "命中率变化 (%)",
            "预期 Miss 数", "实际 Miss 数", "Miss 数变化 (%)",
            "预期平均延迟", "实际平均延迟", "延迟变化 (%)",
            "预期 IPC", "实际 IPC", "IPC 变化 (%)"
        ]

        for test in smt_test_results:
            test_name = test["filename"]
            smt_avg_delay = test["bottleneck"].get("avg_delay", 0)
            smt_total_ipc = test["global_perf"].get("total_ipc", 0)
            
            for idx, (proc_name, thread_num) in enumerate(test["process_list"]):
                if idx >= len(test["thread_metrics"]):
                    compare_table.append([test_name, proc_name] + ["数据缺失"]*12)
                    continue
                smt_l1d = test["thread_metrics"][idx]
                baseline = single_run_baseline.get(proc_name)
                if not baseline:
                    compare_table.append([test_name, proc_name] + ["无基准数据"]*12)
                    continue
                
                base_l1d = baseline["l1d"]
                base_global = baseline["global"]
                base_bottleneck = baseline["bottleneck"]

                hit_ratio_base = base_l1d.get("hit_ratio", 0)
                hit_ratio_smt = smt_l1d.get("hit_ratio", 0)
                hit_ratio_change = safe_divide((hit_ratio_smt - hit_ratio_base), hit_ratio_base) * 100

                misses_base = base_l1d.get("misses", 0)
                misses_smt = smt_l1d.get("misses", 0)
                misses_change = safe_divide((misses_smt - misses_base), misses_base) * 100

                latency_base = base_bottleneck.get("avg_delay", 0)
                latency_smt = smt_avg_delay
                latency_change = safe_divide((latency_smt - latency_base), latency_base) * 100

                ipc_base = base_global.get("total_ipc", 0)
                ipc_smt = safe_divide(smt_total_ipc, test["smt_num"])
                ipc_change = safe_divide((ipc_smt - ipc_base), ipc_base) * 100

                compare_table.append([
                    test_name, proc_name,
                    format_value(hit_ratio_base, 4), format_value(hit_ratio_smt, 4), f"{hit_ratio_change:+.2f}%",
                    misses_base, misses_smt, f"{misses_change:+.2f}%",
                    format_value(latency_base, 4), format_value(latency_smt, 4), f"{latency_change:+.2f}%",
                    format_value(ipc_base, 4), format_value(ipc_smt, 4), f"{ipc_change:+.2f}%"
                ])
        print_table(compare_table, compare_headers)
    else:
        print("缺少 SMT 测试数据或单进程基准数据，无法生成对比")

    # --------------------------
    # 5. 保存完整统计结果到 CSV 文件 (使用 csv 模块避免乱码)
    # --------------------------
    csv_output_file = "smtsim_test_full_summary.csv"
    try:
        with open(csv_output_file, "w", encoding="utf-8-sig", newline="") as f:
            writer = csv.writer(f)
            
            # 写入单进程基准数据
            writer.writerow(["=== 单进程单独运行基准性能汇总 ==="])
            writer.writerow(["进程名", "总周期数", "总 IPC", "L1D 访问次数", "L1D Miss 数", "L1D 命中率 (%)", 
                           "平均访存延迟", "总访存延迟", "总访存数", "MSHR 冲突次数"])
            for proc_name, data in single_run_baseline.items():
                l1d = data["l1d"]
                bottleneck = data["bottleneck"]
                writer.writerow([
                    proc_name,
                    data["global"].get("total_cycles", ""),
                    data["global"].get("total_ipc", ""),
                    l1d.get("accesses", ""),
                    l1d.get("misses", ""),
                    format_value(l1d.get("hit_ratio", 0), 4),
                    format_value(bottleneck.get("avg_delay", 0), 4),
                    bottleneck.get("total_delay", ""),
                    bottleneck.get("access_cnt", ""),
                    bottleneck.get("mshr_conflicts", "")
                ])
            
            # 写入空行分隔
            writer.writerow([])
            
            # 写入 SMT 全局全维度对比
            writer.writerow(["=== SMT 全局全维度预期 vs 实际性能汇总 ==="])
            writer.writerow(["测试文件名", "SMT 进程数", "预期总 IPC", "实际总 IPC", "IPC 差异", "IPC 差异率 (%)", 
                           "预期全局命中率 (%)", "实际全局命中率 (%)", "命中率差异",
                           "预期平均延迟", "实际平均延迟", "延迟差异", "延迟差异率 (%)",
                           "预期总 MSHR 冲突", "实际总 MSHR 冲突", "冲突差异", "总周期数", "Bank 平均利用率"])
            for row in smt_global_table:
                writer.writerow(row)
            
            # 写入空行分隔
            writer.writerow([])
            
            # 写入 SMT 进程级明细对比
            writer.writerow(["=== SMT 进程级明细预期 vs 实际性能对比 ==="])
            writer.writerow(["SMT 测试场景", "进程名", "预期命中率 (%)", "实际命中率 (%)", "命中率变化 (%)",
                           "预期 Miss 数", "实际 Miss 数", "Miss 数变化 (%)",
                           "预期平均延迟", "实际平均延迟", "延迟变化 (%)",
                           "预期 IPC", "实际 IPC", "IPC 变化 (%)"])
            for row in compare_table:
                writer.writerow(row)
        
        print(f"\n========================================")
        print(f"完整全维度统计结果已保存到：{csv_output_file}")
        print(f"========================================")
    except Exception as e:
        print(f"\n警告：保存 CSV 文件失败：{str(e)}")

if __name__ == "__main__":
    main()
