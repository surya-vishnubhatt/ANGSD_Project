#! /bin/bash -l

#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=test
#SBATCH --time=06:00:00 # HH/MM/SS
#SBATCH --mem=32G

mamba activate angsd 
cd /athena/angsd/scratch/spv4002/PROJECT

#The range of A79V polyA data had to be found manually using ERA
#Range: SRR21190766 --> SRR21190775
start=21190766 
end=21190775

# Loop through each SRA accession number in the range
for ((i=start;i<=end;i++))
do
    # Define the SRA accession number
    accession="SRR${i}"

    # Create a folder with the accession number if it doesn't already exist
    if [ ! -d "$accession" ]
    then
        mkdir "$accession"
    fi

    # Run fastq-dump on the accession number and put the output in the folder with the same name
    fastq-dump --split-files "$accession" -O "$accession"
done