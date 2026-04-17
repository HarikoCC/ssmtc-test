#!/bin/bash

# 保存当前工作目录
ORIGINAL_DIR=$(pwd)

# 遍历所有一级子目录
for SUB_DIR in */; do
    # 去除目录名末尾的斜杠
    SUB_DIR_NAME=${SUB_DIR%/}
    
    echo "Entering directory: $SUB_DIR_NAME"
    
    # 进入子目录，失败则跳过
    cd "$SUB_DIR_NAME" || {
        echo "Failed to enter $SUB_DIR_NAME, skipping"
        continue
    }
    
    # 检查并执行 runtests.py
    if [ -f "runtests.py" ]; then
        echo "Running runtests.py -j 120 in $SUB_DIR_NAME"
        python3 runtests.py -j 120
    else
        echo "runtests.py not found in $SUB_DIR_NAME, skipping"
    fi
    
    # 返回原始工作目录
    cd "$ORIGINAL_DIR" || {
        echo "Failed to return to original directory, aborting"
        exit 1
    }
done

echo "All subdirectories processed. Starting Git operations."

# Git 添加所有变更
git add .

# 仅在有变更时提交
if git diff --cached --quiet; then
    echo "No changes to commit."
else
    git commit -m "Update test results"
    git push
fi

echo "Script finished."

