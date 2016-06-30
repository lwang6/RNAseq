#!/bin/bash

cd /media/sf_RNAseq 

for filename in GroupA
do
fastqc $filename.fastq -o /media/sf_Ubuntu_share/GroupA/FASTQC/
done

