#!/bin/bash -l
#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=stranded
#SBATCH --time=12:00:00 # HH/MM/SS
#SBATCH --mem=32G
#SBATCH --mail-user=spv4002@med.cornell.edu
#SBATCH --mail-type=ALL

mamba activate angsd

# Loop over each directory in the list and run FastQC on the paired-end data
for i in {66..75}; do
  dir="SRR211907$i"
  
  # Create a subdirectory to store the FastQC results for each input directory
  mkdir fastqc_results/${dir}
  
  # Run FastQC on the paired-end data in the directory
  fastqc ${dir}/${dir}_1.fastq ${dir}/${dir}_2.fastq -o fastqc_results/${dir}
done
