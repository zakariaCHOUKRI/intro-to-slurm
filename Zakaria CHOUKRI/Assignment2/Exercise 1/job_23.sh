#!/bin/bash
#SBATCH --job-name=job_23
#SBATCH --output=output_23.txt
#SBATCH --partition=special
#SBATCH --ntasks=23
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 23 python3 script.py
