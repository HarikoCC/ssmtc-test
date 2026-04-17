#!/usr/bin/env python3
import re
import shutil
from datetime import datetime

# 配置
INPUT_FILE = "test_commands.txt"
BACKUP_FILE = f"test_commands.txt.bak.{datetime.now().strftime('%Y%m%d%H%M%S')}"

def clean_command_lines():
    # 1. 备份原文件
    try:
        shutil.copy2(INPUT_FILE, BACKUP_FILE)
        print(f"✅ 原文件已备份：{BACKUP_FILE}")
    except Exception as e:
        print(f"❌ 备份失败：{e}")
        return

    # 2. 正则匹配替换：去掉 ./目录名/ 前缀
    pattern = re.compile(r'^\./[^/]+/')  # 匹配 ./xxx/
    new_lines = []
    seen_commands = set()  # 用于去重，记录已经添加的有效指令

    with open(INPUT_FILE, 'r', encoding='utf-8') as f:
        for line in f:
            original_line = line.rstrip('\n')  # 保留换行符外的内容
            stripped_line = original_line.strip()
            
            # 保留注释行和空行（不参与去重）
            if not stripped_line or stripped_line.startswith("#"):
                new_lines.append(original_line + '\n')
                continue
            
            # 替换目录前缀
            new_line = pattern.sub('./', original_line)
            
            # 🔥 核心修复：去重，重复指令只保留一次
            if new_line not in seen_commands:
                seen_commands.add(new_line)
                new_lines.append(new_line + '\n')

    # 3. 写入清理+去重后的内容
    with open(INPUT_FILE, 'w', encoding='utf-8') as f:
        f.writelines(new_lines)

    print("✅ 批量清理 + 去重 完成！")
    print("📌 旧格式：./share32/smtsim ../xxx.arg（重复多行）")
    print("📌 新格式：./smtsim ../xxx.arg（仅保留一行）")
    print(f"📊 处理结果：原文件行数 → 清理后 {len(seen_commands)} 条唯一指令")

if __name__ == "__main__":
    clean_command_lines()

