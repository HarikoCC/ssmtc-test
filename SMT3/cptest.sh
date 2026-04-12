#!/bin/bash

SRC_FILE="./smt3test.py"

# 检查源文件
if [ ! -f "$SRC_FILE" ]; then
    echo "❌ 错误：当前目录下未找到 $SRC_FILE"
    exit 1
fi

echo "🔍 开始复制到所有二级子目录..."

# 只匹配二级子目录：./一级目录/二级目录
find . -mindepth 2 -maxdepth 2 -type d | while read -r dest_dir; do
    cp -f "$SRC_FILE" "$dest_dir/"
    if [ $? -eq 0 ]; then
        echo "✅ 已复制到：$dest_dir"
    else
        echo "❌ 复制失败：$dest_dir"
    fi
done

echo "🎉 复制完成！"
exit 0

