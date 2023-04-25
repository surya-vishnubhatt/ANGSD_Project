#!/bin/bash -l
#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=FEAT_CNT
#SBATCH --time=12:00:00 # HH/MM/SS
#SBATCH --mem=32G
#SBATCH --mail-user=spv4002@med.cornell.edu
#SBATCH --mail-type=ALL

mamba activate angsd

# Need a new folder to put in and check strandedness from QORTS

featureCounts -p -s 2 --countReadPairs \
-a /athena/angsd/scratch/spv4002/hg38/hg38.ncbiRefSeq.gtf \
-o /athena/angsd/scratch/spv4002/featurecounts_result/featureCounts.txt \
/athena/angsd/scratch/spv4002/SRR21190766/SRR21190766.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190767/SRR21190767.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190768/SRR21190768.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190769/SRR21190769.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190770/SRR21190770.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190771/SRR21190771.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190772/SRR21190772.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190773/SRR21190773.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190774/SRR21190774.Aligned.sortedByCoord.out.bam /athena/angsd/scratch/spv4002/SRR21190775/SRR21190775.Aligned.sortedByCoord.out.bam


