#!/bin/bash

# 脚本功能：批量复制当前目录下所有 .arg 文件为 .arg2 .arg3 .arg4
# 适用系统：Ubuntu 22.04

echo "========================================"
echo "  开始批量复制 .arg 文件 → .arg2/.arg3/.arg4"
echo "========================================"

# 搜索当前目录下所有 .arg 文件（不包含子目录）
# 如果需要包含子目录，把 ./*.arg 改成 ./**/*.arg 并开启 globstar
for arg_file in ./*.arg; do
    # 如果没有找到任何 .arg 文件，跳过提示
    [ -e "$arg_file" ] || continue

    # 获取文件名（不带路径）
    filename=$(basename "$arg_file")
    
    echo "正在处理文件：$filename"

    # 复制为 .arg2
    cp -v "$arg_file" "${arg_file}2"
    # 复制为 .arg3
    cp -v "$arg_file" "${arg_file}3"
    # 复制为 .arg4
    cp -v "$arg_file" "${arg_file}4"

    echo "完成：$filename → 生成 3 个副本"
    echo "----------------------------------------"
done

echo "========================================"
echo "  所有文件处理完成！"
echo "========================================"

