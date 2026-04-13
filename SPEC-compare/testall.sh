#!/bin/bash

# 保存当前所在的根目录，确保每次循环后能正确返回
ROOT_DIR=$(pwd)

# 遍历当前目录下的所有子目录
for dir in */; do
    # 去除路径末尾的斜杠，仅保留目录名
    SUB_DIR_NAME="${dir%/}"

    echo "========================================="
    echo "处理目录: $SUB_DIR_NAME"
    echo "========================================="

    # 尝试进入子目录，失败则跳过
    cd "$dir" || {
        echo "⚠️  无法进入目录 $dir，跳过..."
        continue
    }

    # 检查 autotest.py 是否存在
    if [ -f "autotest.py" ]; then
        echo "▶️  正在执行: python3 autotest.py -s 3 -j 110"
        echo ""
        
        # 执行 Python 脚本
        python3 autotest.py -s 3 -j 110
        
        # 捕获执行结果的返回码
        EXIT_CODE=$?
        if [ $EXIT_CODE -ne 0 ]; then
            echo ""
            echo "⚠️  警告: $SUB_DIR_NAME 中的脚本执行完毕，但返回了错误码 ($EXIT_CODE)"
        fi
    else
        echo "⏭️  跳过: 未找到 autotest.py"
    fi

    echo ""

    # 返回根目录，准备处理下一个
    cd "$ROOT_DIR" || {
        echo "❌ 严重错误: 无法返回根目录 $ROOT_DIR，脚本终止。"
        exit 1
    }
done

echo "✅ 所有子目录处理完成。"

