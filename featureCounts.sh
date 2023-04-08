#!/bin/bash -l
#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=stranded
#SBATCH --time=12:00:00 # HH/MM/SS
#SBATCH --mem=16G
#SBATCH --mail-user=spv4002@med.cornell.edu
#SBATCH --mail-type=ALL

mamba activate angsd

featureCounts -p -s 1 \
-a /athena/angsd/scratch/spv4002/hg38/hg38.ncbiRefSeq.gtf \
-o /athena/angsd/scratch/spv4002/gene_counts_update/featureCounts.txt \
/athena/angsd/scratch/spv4002/SRR21190766/SRR21190766.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190767/SRR21190767.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190768/SRR21190768.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190769/SRR21190769.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190770/SRR21190770.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190771/SRR21190771.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190772/SRR21190772.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190773/SRR21190773.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190774/SRR21190774.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190775/SRR21190775.Aligned.sortedByCoord.out.bam


