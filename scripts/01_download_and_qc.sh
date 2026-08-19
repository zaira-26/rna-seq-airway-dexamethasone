#!/bin/bash

# Step 1: Download raw FASTQ files from SRA
cd ~/rnaseq_project/raw_data

for SAMPLE in SRR1039508 SRR1039509 SRR1039512 SRR1039513
do
  prefetch $SAMPLE
  fasterq-dump $SAMPLE --split-files
done

# Step 2: Run FASTQC on all samples
fastqc *.fastq -o ~/rnaseq_project/fastqc_results

# Step 3: Check all the files in fastqc results directory
cd ~/rnaseq_project/fastqc_results
ls

# Step 4: Summarise with MultiQC
multiqc .
