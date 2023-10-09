#!/bin/bash

# Exercise 1

# Author: Zakaria CHOUKRI

if [ ! -d "my_files" ]; then
	mkdir my_files
fi

cd my_files

for i in {1..5}; do
	echo "This is file $i." > "file$i.txt"
done
