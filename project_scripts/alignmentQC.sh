#!/bin/bash -l

#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=align_qc``
#SBATCH --time=48:00:00 # HH/MM/SS
#SBATCH --mem=64G

mamba activate qorts

# Create directories for each SRR ID
for index in {766..775}; do
  mkdir alignmentQC/SRR21190${index}_alignmentQC
done

# Run QoRTs on each bam file
for index in {766..775}; do
  bam_file=/athena/angsd/scratch/spv4002/SRR21190${index}/SRR21190${index}.Aligned.sortedByCoord.out.bam
  output_dir=/athena/angsd/scratch/spv4002/alignmentQC/SRR21190${index}_alignmentQC
  
  qorts -Xmx18000M QC \
  --generatePlots \
  --stranded \
  $bam_file \
  /athena/angsd/scratch/spv4002/hg38/hg38.ncbiRefSeq.gtf \
  $output_dir
done
