#!/bin/bash

# Create three 15MB files
for i in {1..3}; do
    dd if=/dev/zero of=15mb_file_$i bs=1M count=15
done

# Create two 5MB files
for i in {1..2}; do
    dd if=/dev/zero of=5mb_file_$i bs=1M count=5
done

echo "Files created:"
ls -lh 15mb_file_* 5mb_file_*

