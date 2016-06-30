#!/bin/bash


#DATADIR= /media/sf_RNAseq/fastq
#OUTDIR= /media/sf_RNAseq/FASTQC_filtered

cd /media/sf_RNAseq/fastq
for foldername in Group*
do
cd ./$foldername/filtered
for filename in Group*_filtered.fastq
do
echo "I am running FASTQC for $filename "
fastqc $filename -o /media/sf_RNAseq/FASTQC_filtered
done
cd ../..
done

