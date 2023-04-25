#!/bin/bash -l
#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=stranded
#SBATCH --time=12:00:00 # HH/MM/SS
#SBATCH --mem=32G
#SBATCH --mail-user=spv4002@med.cornell.edu
#SBATCH --mail-type=ALL

for i in SRR*; do
    /softlib/apps/EL7/BamQC/bin/bamqc $i/*.bam -o bamqc_results
done