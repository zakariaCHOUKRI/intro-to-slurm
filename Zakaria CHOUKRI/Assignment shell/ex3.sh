#!/bin/bash

# Exercise 3

# Author: Zakaria CHOUKRI

input_file="input.txt"

if [ ! -e "$input_file" ]; then
    echo "Input file '$input_file' does not exist."
    exit 1
fi

cat "$input_file" | tr ' ' '\n' | tr -d '[:punct:]' | grep -v '^$' | sort | uniq -c | sort -nr | head -5

