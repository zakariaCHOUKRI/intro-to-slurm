import os
import re
import matplotlib.pyplot as plt

def extract_cpu_time(file_path):
    with open(file_path, 'r') as file:
        content = file.read()
        match = re.search(r'cpu time is:  (\d+\.\d+)', content)
        if match:
            return float(match.group(1))
        else:
            print(f"Failed to extract CPU time from file: {file_path}")
            print(f"File content: {content}")
            return None

def plot_cpu_time(output_files, output_image='cpu_time_plot.png'):
    core_counts = [int(re.search(r'output_(\d+).txt', file).group(1)) for file in output_files]
    cpu_times = [extract_cpu_time(file) for file in output_files]

    # Print debug information
    print("Core Counts:", core_counts)
    print("CPU Times:", cpu_times)

    plt.plot(core_counts, cpu_times, marker='o')
    plt.title('CPU Time vs Number of Cores')
    plt.xlabel('Number of Cores')
    plt.ylabel('CPU Time (s)')
    plt.grid(True)

    plt.savefig(output_image)  # Save the plot to an image file
    plt.close()  # Close the plot to prevent it from being displayed immediately
    print(f"Plot saved to {output_image}")

if __name__ == "__main__":
    output_files = [file for file in os.listdir() if file.startswith('output_') and file.endswith('.txt')]
    output_files.sort()  # Sort files to maintain the order

    plot_cpu_time(output_files, output_image='cpu_time_plot.png')

