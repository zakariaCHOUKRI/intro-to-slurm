#!/bin/bash

# Author: Zakaria CHOUKRI

# Exercise 4

#SBATCH --job-name=job_a
#SBATCH --output=ex4a_output.txt

python quadratic_equation.py
