#!/bin/bash

echo 'I am converting sra to fastq file for pair end'
#cd /media/GSE49712

fastq-dump --split-3 SRR950078.sra  -O /media/sf_RNAseq/fastq
fastq-dump --split-3 SRR950082.sra  -O /media/sf_RNAseq/fastq
fastq-dump --split-3 SRR950086.sra  -O /media/sf_RNAseq/fastq
fastq-dump --split-3 SRR950079.sra  -O /media/sf_RNAseq/fastq
fastq-dump --split-3 SRR950083.sra  -O /media/sf_RNAseq/fastq
fastq-dump --split-3 SRR950087.sra  -O /media/sf_RNAseq/fastq



