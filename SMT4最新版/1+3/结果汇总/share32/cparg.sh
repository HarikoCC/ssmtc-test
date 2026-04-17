#!/bin/bash

echo "========================================"
echo "  开始批量复制 .arg 文件 → .arg2/.arg3/.arg4"
echo "  仅修改第一行第三个参数（线程数）为 2/3/4"
echo "========================================"

for arg_file in ./*.arg; do
    [ -e "$arg_file" ] || continue
    filename=$(basename "$arg_file")
    echo "正在处理文件：$filename"

    for target_thread in 2 3 4; do
        target_file="${arg_file}${target_thread}"
        
        # 核心逻辑：仅修改第一行的第三个字段($3)，其余字段和行完全保留
        awk -v t="$target_thread" 'NR==1 {$3=t; print} NR>1 {print}' "$arg_file" > "$target_file"
        
        echo "  ✅ 生成 $target_file，第一行第三个参数已修改为 $target_thread"
    done

    echo "完成：$filename"
    echo "----------------------------------------"
done

echo "========================================"
echo "  所有文件处理完成！"
echo "========================================"

