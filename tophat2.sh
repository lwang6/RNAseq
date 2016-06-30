#!/bin/bash

#Make sure there is no space between = and / when define a path using a variable


DATA=/home/lwang6/Documents/RNAseq/fastq
ANNOT=/home/lwang6/Documents/RNAseq/iGenome_Homo_sapiens_hg19/UCSC/hg19/Annotation/hg19.gtf
BOWTIE_INDEX=/home/lwang6/Documents/RNAseq/iGenome_Homo_sapiens_hg19/UCSC/hg19/Sequence/Bowtie2Index
OUT=/home/lwang6/Documents/RNAseq/tophat2/aligned_reads

cd $DATA
for foldername in GroupB*
do
cd ./$foldername/filtered
#mkdir  $OUT/$foldername
echo "I am running tophat2 alignment for filtered $foldername"
tophat2 --output-dir $OUT/$foldername \
--GTF $ANNOT --num-threads 12 \
--mate-inner-dist 70 \
--mate-std-dev 90 \
$BOWTIE_INDEX/hg19 \
$foldername\_filtered_1.fastq  $foldername\_filtered_2.fastq
cd ../..
done


