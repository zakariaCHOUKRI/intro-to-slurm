#!/bin/bash

# Exercise 2

# Author: Zakaria CHOUKRI

n=0

for file in $(find . -type f); do
	if [[ -f "$file" ]]; then
		# echo "Processing file $file"
		no_lines=$(wc -l < "$file")
		# echo "$no_lines"
		n=$((n + no_lines))
	fi
done

echo "The number of lines in all files combined is: $n"
