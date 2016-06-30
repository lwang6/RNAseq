#!/bin/bash

#Make sure there is no space between = and / when define a path using a variable
#tophat2 has to follow the order of [options], then bowtie2-index, then input fastq files

DATA=/home/lwang6/Documents/RNAseq/fastq
ANNOT=/home/lwang6/Documents/RNAseq/Lu_hg19/UCSC_hg19_annotation/hg19.gtf
BOWTIE_INDEX=/home/lwang6/Documents/RNAseq/Lu_hg19/BOWTIE2_INDEX
OUT=/home/lwang6/Documents/RNAseq/tophat2/aligned_new

cd $DATA
for foldername in Group*
do
cd ./$foldername/filtered
mkdir  $OUT/$foldername
echo "I am running tophat2 alignment for filtered $foldername"
tophat2 -G $ANNOT -o $OUT/$foldername \
-p 12 -r 70 \
--mate-std-dev 90 \
$BOWTIE_INDEX/hg19 \
$foldername\_filtered_1.fastq  $foldername\_filtered_2.fastq 
cd ../..
done



