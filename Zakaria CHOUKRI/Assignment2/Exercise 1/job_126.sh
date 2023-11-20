#!/bin/bash
#SBATCH --job-name=job_126
#SBATCH --output=output_126.txt
#SBATCH --partition=special
#SBATCH --ntasks=126
module unload gcc
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 126 python3 script.py
