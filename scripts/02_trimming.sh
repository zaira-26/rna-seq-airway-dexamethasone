#!/bin/bash

# Step 1: Trim adapters and low-quality bases using fastp
cd ~/rnaseq_project/raw_data

for SAMPLE in SRR1039508 SRR1039509 SRR1039512 SRR1039513
do
  fastp \
  -i ${SAMPLE}_1.fastq -I ${SAMPLE}_2.fastq \
  -o ~/rnaseq_project/trimmed_data/${SAMPLE}_1_trimmed.fastq \
  -O ~/rnaseq_proect/trimmed_data/${SAMPLE}_2_trimmed.fastq \
  -h ~/rnaseq_project/trimmed_data/${SAMPLE}_fastp.html \
  -j ~/rnaseq_project/trimmed_data/${SAMPLE}_fastp.json
done
