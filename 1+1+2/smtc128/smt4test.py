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
        print("Error: smtsim executable not found in current directory!")
        sys.exit(1)
    if not os.access("./smtsim", os.X_OK):
        print("Error: smtsim is not executable! Please run 'chmod +x smtsim'")
        sys.exit(1)

def create_logs_directory():
    if not os.path.exists("./logs"):
        os.makedirs("./logs")
        print("Info: Created 'logs' directory for test outputs")

def get_file_base_name(filename):
    if filename.endswith(".argn"):
        return filename[:-5]
    elif filename.endswith(".arg4"):
        return filename[:-5]
    elif filename.endswith(".arg3"):
        return filename[:-5]
    elif filename.endswith(".arg2"):
        return filename[:-5]
    elif filename.endswith(".arg"):
        return filename[:-4]
    return filename

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
        1: glob.glob("*.arg"),    # 1-thread (.arg)
        2: glob.glob("*.arg2"),   # 2-thread (.arg2)
        3: glob.glob("*.arg3"),   # 3-thread (.arg3)
        4: glob.glob("*.arg4"),   # 4-thread (.arg4)
        'n': glob.glob("*.argn")  # Special .argn files
    }
    
    for key in file_dict:
        file_dict[key] = sorted(list(set(file_dict[key])))
    
    return file_dict

def validate_and_generate_combinations(file_dict, scenario_type):
    combinations = []
    
    # Create a mixed pool for 1-thread slots: .arg + .argn
    pool_1thread_plus_argn = file_dict[1] + file_dict['n']
    pool_1thread_plus_argn = sorted(list(set(pool_1thread_plus_argn)))

    if scenario_type == 1:
        # Scenario 1: 1+1+1+1 (4x from mixed pool)
        if len(pool_1thread_plus_argn) < 4:
            print(f"Error: Scenario 1 needs at least 4 files in .arg/.argn pool, found {len(pool_1thread_plus_argn)}")
            sys.exit(1)
        for candidate_comb in itertools.combinations(pool_1thread_plus_argn, 4):
            if is_combination_valid(candidate_comb):
                combinations.append(candidate_comb)
        
    elif scenario_type == 2:
        # Scenario 2: 1+1+2
        if len(pool_1thread_plus_argn) < 2:
            print(f"Error: Scenario 2 needs at least 2 files in .arg/.argn pool, found {len(pool_1thread_plus_argn)}")
            sys.exit(1)
        if len(file_dict[2]) < 1:
            print(f"Error: Scenario 2 needs at least 1 .arg2 file, found {len(file_dict[2])}")
            sys.exit(1)
        
        part_1thread = list(itertools.combinations(pool_1thread_plus_argn, 2))
        part_2thread = file_dict[2]
        
        for p1 in part_1thread:
            for p2 in part_2thread:
                candidate_comb = (p2,) + p1
                if is_combination_valid(candidate_comb):
                    combinations.append(candidate_comb)
                
    elif scenario_type == 3:
        # Scenario 3: 1+3
        if len(pool_1thread_plus_argn) < 1:
            print(f"Error: Scenario 3 needs at least 1 file in .arg/.argn pool, found {len(pool_1thread_plus_argn)}")
            sys.exit(1)
        if len(file_dict[3]) < 1:
            print(f"Error: Scenario 3 needs at least 1 .arg3 file, found {len(file_dict[3])}")
            sys.exit(1)
        
        for f_1thread, f_arg3 in itertools.product(pool_1thread_plus_argn, file_dict[3]):
            candidate_comb = (f_arg3, f_1thread)
            if is_combination_valid(candidate_comb):
                combinations.append(candidate_comb)
        
    elif scenario_type == 4:
        # Scenario 4: 2+2 (2x .arg2)
        if len(file_dict[2]) < 2:
            print(f"Error: Scenario 4 needs at least 2 .arg2 files, found {len(file_dict[2])}")
            sys.exit(1)
        for candidate_comb in itertools.combinations(file_dict[2], 2):
            if is_combination_valid(candidate_comb):
                combinations.append(candidate_comb)
        
    elif scenario_type == 5:
        # Scenario 5: 4 (1x .arg4)
        if len(file_dict[4]) < 1:
            print(f"Error: Scenario 5 needs at least 1 .arg4 file, found {len(file_dict[4])}")
            sys.exit(1)
        combinations = [(f,) for f in file_dict[4]]
        
    else:
        print("Error: Invalid scenario type! Please choose a number between 1 and 5")
        sys.exit(1)
    
    # -------------------------------------------------------------------------
    # [MODIFIED LOGIC] FILTER: Keep only combinations with EXACTLY ONE .argn file
    # -------------------------------------------------------------------------
    if not file_dict['n']:
        print("Error: No .argn files found!")
        sys.exit(1)

    filtered_combinations = []
    for comb in combinations:
        # Count the number of .argn files in this combination
        count_argn = sum(1 for f in comb if f.endswith(".argn"))
        
        # Check for exactly one
        if count_argn == 1:
            filtered_combinations.append(comb)
    
    combinations = filtered_combinations
        
    if not combinations:
        print("Error: No valid test combinations containing EXACTLY ONE .argn file could be generated!")
        print("       (Check file base names or the number of available .arg/.argn files)")
        sys.exit(1)
        
    return combinations

def run_single_test(combination, combination_id):
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    scenario_tag = f"smt4_mixed_scenario_{len(combination)}procs"
    log_filename = f"{scenario_tag}_test{combination_id}_{timestamp}.log"
    log_file_path = os.path.join("./logs", log_filename)
    
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
            f.write(f"Test Combination (Multi-thread first): {' + '.join(combination)}\n")
            f.write(f"Command: {' '.join(cmd)}\n")
            f.write(f"{'='*50}\n\n")
            f.write(output)
        
        return (result.returncode == 0, log_file_path, combination)
    
    except Exception as e:
        with open(log_file_path, "w", encoding="utf-8") as f:
            f.write(f"Test Combination (Multi-thread first): {' + '.join(combination)}\n")
            f.write(f"Command: {' '.join(cmd)}\n")
            f.write(f"{'='*50}\n\n")
            f.write(f"Test Execution Error: {str(e)}\n")
        return (False, log_file_path, combination)

def main():
    parser = argparse.ArgumentParser(description="SMT-4 Mixed Load Automation Tool (Exact One Argn Mode)")
    parser.add_argument(
        "-s", "--scenario", 
        type=int, 
        required=True, 
        help="Test scenario ID (1-5): 1=1+1+1+1, 2=1+1+2, 3=1+3, 4=2+2, 5=4"
    )
    parser.add_argument(
        "-j", "--jobs", 
        type=int, 
        default=4, 
        help="Number of parallel smtsim processes (default: 4)"
    )
    args = parser.parse_args()
    
    check_smtsim_exists()
    create_logs_directory()
    file_dict = categorize_arg_files()
    
    print("="*50)
    print("Test File Statistics:")
    print(f"  1-thread (.arg)   : {len(file_dict[1])}")
    print(f"  2-thread (.arg2)  : {len(file_dict[2])}")
    print(f"  3-thread (.arg3)  : {len(file_dict[3])}")
    print(f"  4-thread (.arg4)  : {len(file_dict[4])}")
    print(f"  Special (.argn)   : {len(file_dict['n'])}")
    print("  [MODE: Testing only combinations with EXACTLY ONE .argn]")
    
    combinations = validate_and_generate_combinations(file_dict, args.scenario)
    
    scenario_name_map = {
        1: "1+1+1+1 (4 single-thread slot)",
        2: "1+1+2 (2 single + 1 dual-thread)",
        3: "1+3 (1 single + 1 tri-thread)",
        4: "2+2 (2 dual-thread)",
        5: "4 (1 quad-thread)"
    }
    
    print("="*50)
    print(f"Scenario: {args.scenario} - {scenario_name_map[args.scenario]}")
    print(f"Total Valid Combinations (Exact 1 .argn): {len(combinations)}")
    print(f"Parallel Jobs: {args.jobs}")
    print(f"Log Directory: ./logs")
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
                    print(f"[OK] Test Passed: {comb_str} (Log: {log_file})")
                    success_count += 1
                else:
                    print(f"[FAIL] Test Failed: {comb_str} (Log: {log_file})")
                    failed_count += 1
                    failed_test_list.append(comb_str)
            except Exception as e:
                comb_str = " + ".join(current_comb)
                print(f"[ERROR] Test Exception: {comb_str} (Error: {str(e)})")
                failed_count += 1
                failed_test_list.append(comb_str)
    
    print("="*50)
    print("Test Execution Complete! Summary:")
    print(f"  Total Tests : {len(combinations)}")
    print(f"  Success     : {success_count}")
    print(f"  Failed      : {failed_count}")
    if failed_test_list:
        print(f"  Failed Combinations:")
        for failed_comb in failed_test_list:
            print(f"    - {failed_comb}")
    print("="*50)

if __name__ == "__main__":
    main()

