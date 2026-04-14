#!/bin/sh
# Script name: autocp.sh
# Purpose: Automatically compile all .c files on DIGITAL UNIX 4.0D ALPHA (SMTSIM compliant)
# Follows README-specified cc flags: -non_shared -T 20000000 -D 30000000

# Set compilation parameters (strictly match README)
CC=cc
CC_FLAGS="-non_shared -T 20000000 -D 30000000"

# Check for .c files (legacy sh-compatible check)
ls *.c > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Error: No .c source files found in the current directory!"
    exit 1
fi

# Iterate over .c files (legacy sh-compatible loop)
for src_file in `ls *.c`; do
    # Extract executable name (legacy sh-compatible: replace .c with empty string)
    exe_file=`echo $src_file | sed 's/\.c$//'`
    
    echo "========================================"
    echo "Starting compilation: $src_file . $exe_file"
    echo "Compilation command: $CC $CC_FLAGS $src_file -o $exe_file"
    
    # Execute compilation
    $CC $CC_FLAGS $src_file -o $exe_file
    
    # Check compilation status
    if [ $? -eq 0 ]; then
        echo "Compilation successful: $exe_file generated"
        chmod +x $exe_file
    else
        echo "Compilation failed: $src_file"
        continue
    fi
done

echo "========================================"
echo "Compilation process completed!"
echo "Compiled executables: `ls *.c | sed 's/\.c$//' | tr '\n' ' '`"
