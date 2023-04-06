#! /bin/bash -l

#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=star_align
#SBATCH --time=06:00:00 # HH/MM/SS
#SBATCH --mem=32G

mamba activate angsd 
cd /athena/angsd/scratch/spv4002


# Set the path to the reference genome index
REF=/athena/angsd/scratch/spv4002/hg38/hg38_indexed

# Set the range of A79V polyA data
start=21190766 
end=21190775

# Loop through each SRA accession number in the range
for ((i=start;i<=end;i++))
do
    # Define the SRA accession number
    accession="SRR${i}"
    # Run STAR to align the paired-end reads to the reference genome
    STAR --runMode alignReads\
        --runThreadN 4 \
        --genomeDir "$REF" \
        --readFilesIn "$accession/${accession}_1.fastq" "$accession/${accession}_2.fastq" \
        --readFilesCommand zcat \
        --outFileNamePrefix "${accession}/${accession}." \
        --outSAMtype BAM SortedByCoordinate  ;

    samtools index /athena/angsd/scratch/spv4002/${accession}/${accession}.Aligned.sortedByCoord.out.bam 
done
