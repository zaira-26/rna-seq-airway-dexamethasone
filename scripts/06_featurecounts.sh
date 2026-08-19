#!/bin/bash

# Count reads per gene using featureCounts
cd ~/rnaseq_project/aligned


featureCounts -p -T 4 \
-a ~/rnaseq_project/genome_index/Homo_sapiens.GRCh38.110.gtf \
-o ~/rnaseq_project/counts/all_samples_counts.txt \
SRR1039508_sorted.bam SRR1039509_sorted.bam SRR1039512_sorted.bam SRR1039513_sorted.bam
