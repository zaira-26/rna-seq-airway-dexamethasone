#!/bin/bash
# Convert SAM to sorted BAM
cd ~/rnaseq_project/aligned

for SAMPLE in SRR1039508 SRR1039509 SRR1039512 SRR1039513
do
samtools sort -@ 4 -o ${SAMPLE}_sorted.bam ${SAMPLE}.sam
done

