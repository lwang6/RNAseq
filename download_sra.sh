#!/bin/bash

echo 'Downlaod sra files'
cd /media/sf_Ubuntu_share
fastq-dump --split-3 SRR950082
fastq-dump --split-3 SRR950084
fastq-dump --split-3 SRR950086 
fastq-dump --split-3 SRR950079
fastq-dump --split-3 SRR950081 
fastq-dump --split-3 SRR950083 
fastq-dump --split-3 SRR950085 
fastq-dump --split-3 SRR950087 
