# ANGSD Project <br />
Hypothesis: I hypothesize that the A79V mutation in the PSEN1 gene, which is associated with familial Alzheimer's disease (fAD), will lead to changes in mRNA expression levels in neuronal cells compared to wild-type PSEN1. I predict that there will be differential expression of coding genes associated with the A79V mutation in the mRNA expression profile of the sampled neuronal cells. Specifically, I posit that this PSEN1 mutation leads to changes in extracellular matrix components and non-coding gene expression which may play a role in the development of neurodegenerative diseases like Alzheimer’s. Note: these sampled glutamatergic cortical neurons were derived from fAD-mutant human induced pluripotent stem cells and their individual isogenic controls were generated by CRISPR/Cas9 genome editing to ensure feasibility of results.
 <br />
 <br />
Data-Selection: The mRNA dataset was implemented by researchers in the paper through the Center for Non-coding RNA in Technology and Health's website (https://rth.dk/resources/crispr/). Instead of redoing their data creation procedures, I can instead just directly access their data through the NCBI GEO database (https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE211993). However, another  more easily accessible source of the same dataset can be found using ENA (https://www.ebi.ac.uk/ena/browser/view/PRJNA873113)- this is the database that I will be using. The data that I have selected contains samples that carry the A79V mutation in the PSEN1 gene. I will need to subset the data based on the relevant mutation type as the dataset contains both A79V and L150P PSEN1 mutations. Additionally, the aforementioned “CRISPRroots pipeline” is not directly relevant to the RNA-seq analysis and, as per your instruction, will be omitted. I will be using 5 replicates for each condition (A79V mutant and Isogenic Control) to ensure sufficient sensitivity. The sequencing platform used for the RNA-seq is DNBseq.
 <br />
 <br />
Potential Biases: One potential bias is that the online dataset I have found seems to be the only one with information on A79V mutations in PSEN1, so verification and validation of this data may be tricky as I am heavily relying on the researchers who produced it. Another potential issue is determining the optimal number of replicates to use for each condition to achieve sufficient sensitivity for detecting differentially expressed genes (DEGs).
