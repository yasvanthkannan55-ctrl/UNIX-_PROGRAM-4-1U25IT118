#!/bin/bash

echo "Checking required files..."

FAILED=0

for file in filename.txt file1.txt file2.txt file3.txt
do
    if [ -f "$file" ]; then
        echo "PASS: $file exists"
    else
        echo "FAIL: $file not found"
        FAILED=1
    fi
done

if [ "$FAILED" -eq 0 ]; then
    echo "ALL TESTS PASSED!"
    exit 0
else
    echo "TESTS FAILED!"
    exit 1
fi
