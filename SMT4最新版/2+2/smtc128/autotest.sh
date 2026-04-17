#!/bin/sh
#
# Digital UNIX 4.0D Executable Test Script (OLD BOURNE SHELL COMPATIBLE)
# Runs all executables in current directory and checks exit status
#

# -------------------------- Configuration --------------------------
# Use BACKTICKS for command substitution (old sh doesn't support $())
TEST_DIR=`pwd`
LOG_FILE="${TEST_DIR}/test_results.log"
SCRIPT_NAME=`basename "$0"`
# Initialize counters without $((...))
PASS_COUNT=0
FAIL_COUNT=0
SKIP_COUNT=0

# -------------------------- Helper Functions --------------------------
log() {
    # Use backticks for date too
    echo "[`date '+%Y-%m-%d %H:%M:%S'`] $1" | tee -a "$LOG_FILE"
}

# -------------------------- Main Script --------------------------
# Clear old log
> "$LOG_FILE"

log "========================================"
log "Digital UNIX 4.0D Executable Test Start"
log "Test Directory: ${TEST_DIR}"
log "========================================"
echo ""

# Iterate over all files in current directory
for file in "$TEST_DIR"/*; do
    # Skip if not a regular file
    if [ ! -f "$file" ]; then
        continue
    fi

    # Get basename (use backticks)
    filename=`basename "$file"`

    # Skip the script itself
    if [ "$filename" = "$SCRIPT_NAME" ]; then
        log "SKIP: $filename (this script)"
        # Use expr for arithmetic (old sh doesn't support $((...)))
        SKIP_COUNT=`expr $SKIP_COUNT + 1`
        echo ""
        continue
    fi

    # Check if file is executable
    if [ -x "$file" ]; then
        log "Testing: $filename"

        # Run executable (redirect output to null, capture exit code)
        "$file" > /dev/null 2>&1
        EXIT_CODE=$?

        # Check exit status
        if [ $EXIT_CODE -eq 0 ]; then
            log "PASS: $filename (exit code 0)"
            PASS_COUNT=`expr $PASS_COUNT + 1`
        else
            log "FAIL: $filename (exit code $EXIT_CODE)"
            FAIL_COUNT=`expr $FAIL_COUNT + 1`
        fi
        echo ""
    fi
done

# -------------------------- Summary --------------------------
log "========================================"
log "Test Summary"
log "========================================"
log "Total Passed: ${PASS_COUNT}"
log "Total Failed: ${FAIL_COUNT}"
log "Total Skipped: ${SKIP_COUNT}"
log "========================================"
log "Test complete. Results saved to: ${LOG_FILE}"

exit 0
