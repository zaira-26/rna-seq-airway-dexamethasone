#!/bin/bash
# Align the trimmed reads to the human genome using HISAT2
cd ~/rnaseq_project/trimmed_data

for SAMPLE in SRR1039508 SRR1039509 SRR1039512 SRR1039513
do
  hisat2 -x ~/rnaseq_project/genome_index/grch38/genome \
    -1 ${SAMPLE}_1_trimmed.fastq \
    -2 ${SAMPLE}_2_trimmed.fastq \
    -S ~/rnaseq_project/aligned/${SAMPLE}.sam \
    --summary-file ~/rnaseq_project/aligned/${SAMPLE}_summary.txt \
    -p 4
done
