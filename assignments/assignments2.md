<h1 align="center">Exercises</h1>

## Exercise 1: Sum of the square roots using MPI

- Load modules `OpenMPI/4.0.3-GCC-9.3.0` and `Python/3.8.2-GCCcore-9.3.0`
- Run the code below on varying the number of cores (from 1 to 128 cores) and plot the CPU time (s) over the number of cores. 
- Create a shell script that generates automatically SLURM batch scripts.

```python
from mpi4py import MPI
import numpy as np

def sum_of_square_root(start, end):
    total = 0
    for i in range(start, end + 1):
        total += np.sqrt(i ** 2)
    return total

# Initialize MPI
comm = MPI.COMM_WORLD
rank = comm.Get_rank()
size = comm.Get_size()

# Define the range of values to sum for each process
N = 100000  # Replace with your desired value of N

local_start = 1 + rank * (N // size)
local_end = local_start + (N // size) - 1
if rank == size - 1:
    local_end += N % size  # Distribute the remainder


ts=MPI.Wtime()
# Calculate the sum of square root locally
local_result = sum_of_square_root(local_start, local_end)
te=MPI.Wtime()

max_cpu = comm.reduce(te-ts, op=MPI.MAX,root=0)
if rank == 0:
    print("cpu time is: ", max_cpu)

# Gather results from all processes
total_result = comm.reduce(local_result, op=MPI.SUM, root=0)

# Print the result from the root process
if rank == 0:
    print(f"The sum of squares from 1 to {N} is: {total_result}")
```

## Exercise 2: Computing Pi using Monte Carlo

- Load modules `OpenMPI/4.0.3-GCC-9.3.0` and `Python/3.8.2-GCCcore-9.3.0`
- Write a unique SLURM batch file to run the code below, with different `total_points` (e.g. 1000,10000,100000,1000000) and with different number of cores (e.g. 1, 2, 4, 8).

```python
from mpi4py import MPI
import random

random.seed(42)

# Initialize MPI                                                                                                                                                                                            
comm = MPI.COMM_WORLD
rank = comm.Get_rank()
size = comm.Get_size()


# Total number of points to generate                                                                                                                                                                        
import sys
total_points = int(sys.argv[1])

# Number of points in the circle                                                                                                                                                                            
points_in_circle = 0

# Generate random points and perform local calculation                                                                                                                                                      
local_points = total_points // size


ts=MPI.Wtime()
for _ in range(local_points):
    x = random.uniform(0, 1)
    y = random.uniform(0, 1)
    if x**2 + y**2 <= 1:
        points_in_circle += 1
te=MPI.Wtime()

max_cpu = comm.reduce(te-ts, op=MPI.MAX,root=0)

if rank == 0:
    print("With", total_points, "samples, the cpu time using", size, "core(s) is: ", max_cpu)


# Reduce the number of points in the circle from all processes                                                                                                                                              
total_points_in_circle = comm.reduce(points_in_circle, op=MPI.SUM, root=0)

if rank == 0:
    # Calcule Pi en utilisant le résultat global                                                                                                                                                            
    pi_approximation = 4.0 * total_points_in_circle / total_points
    print(f"Approximation de Pi: {pi_approximation}")
```

## Exercise 3:  
