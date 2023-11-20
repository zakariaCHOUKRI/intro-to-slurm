#!/bin/bash

# Define the range of cores
for cores in {1..128}
do
    # Create a SLURM batch script for each core count
    script="job_${cores}.sh"
    
    echo "#!/bin/bash" > $script
    echo "#SBATCH --job-name=mpi_job" >> $script
    echo "#SBATCH --output=output_${cores}.txt" >> $script
    echo "#SBATCH --partition=your_partition" >> $script  # Replace 'your_partition' with the appropriate partition
    echo "#SBATCH --nodes=1" >> $script
    echo "#SBATCH --ntasks=$cores" >> $script
    echo "#SBATCH --time=00:10:00" >> $script  # Adjust the time as needed

    echo "module load OpenMPI/4.0.3-GCC-9.3.0" >> $script
    echo "module load Python/3.8.2-GCCcore-9.3.0" >> $script
    echo "mpirun -np $cores python your_script.py" >> $script  # Replace 'your_script.py' with the actual script name

    # Submit the SLURM job
    sbatch $script
done

