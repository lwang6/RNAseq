#!/bin/bash

#Make sure there is no space between = and / when define a path using a variable

#subread index was built in Rsubread

DATA=/home/lwang6/Documents/RNAseq/fastq
ANNOT=/home/lwang6/Documents/RNAseq/iGenome_Homo_sapiens_hg19/UCSC/hg19/Annotation/hg19.gtf
SUBREAD_INDEX=/home/lwang6/Documents/RNAseq/Rsubread
OUT=/home/lwang6/Documents/RNAseq/Rsubread/alignments

cd $DATA
for foldername in Group*
do
cd ./$foldername/filtered
#mkdir $OUT/$foldername
echo "I am running subread alignment for filtered $foldername"
subread-align -t 0 --trim3 4  -T 18 \
-i $SUBREAD_INDEX/hg19 \
-r $foldername\_filtered_1.fastq -R $foldername\_filtered_2.fastq
-o $OUT/$foldername\.bam \
cd ../..
done

mail -s "Subread alignment is done" lwang6@hawaii.edu
