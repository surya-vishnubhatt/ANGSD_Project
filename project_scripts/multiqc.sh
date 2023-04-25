#!/bin/bash -l
#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=stranded
#SBATCH --time=12:00:00 # HH/MM/SS
#SBATCH --mem=32G
#SBATCH --mail-user=spv4002@med.cornell.edu
#SBATCH --mail-type=ALL

mamba activate multiqc

multiqc fastqc_results/SRR211907*/*_fastqc.zip -n multiqc_results

