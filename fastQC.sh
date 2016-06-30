#!/bin/bash

cd  /home/lwang6/Documents/RNAseq/fastq
for foldername in Group*
do
cd $foldername/
for filename in Group*
do
mkdir FASTQC_raw
echo "I am running FASTQC for raw $filename"
fastqc $filename\.fastq -o ./FASTQC_raw
done
cd ..
done
