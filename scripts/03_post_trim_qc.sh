#!/bin/bash

# Post-trimming QC check on all the samples

cd ~/rnaseq_project/trimmed_data
fastqc *_trimmed.fastq -o ~/rnaseq_project/fastqc_results 

cd ~/rnaseq_project/fastqc_results
multiqc . --filename multiqc_report_after_trimming
