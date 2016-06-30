#!/bin/bash

#Make sure there is no space between = and / when define a path using a variable

DATA=/media/sf_RNAseq/fastq
OUT=/media/sf_RNAseq/FASTQC_filtered

cd $DATA
for foldername in Group*
do
#mkdir filtered
cd ./$foldername/filtered
for filename in Group*_filtered.fastq
do
echo "I am running FASTQC for $filename "
fastqc $filename -o $OUT
done
cd ../..
done

