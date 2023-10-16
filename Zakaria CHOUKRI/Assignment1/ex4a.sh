#!/bin/bash

# Author: Zakaria CHOUKRI

# Exercise 4

#SBATCH --job-name=ex4a
#SBATCH --output=ex4a_output.txt

python ex4.py
sleep 30
