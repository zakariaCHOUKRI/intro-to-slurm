#!/bin/bash

# Author: Zakaria CHOUKRI

# Exercise 2

#SBATCH --job-name=ex2
#SBATCH --output=ex2_output.txt
#SBATCH --cpus-per-task=4
#SBATCH --mem=4G

echo "Hello, SLURM!" > ex2_output.txt 
