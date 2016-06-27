#!/bin/bash

OUT=/media/sf_RNAseq/tophat2/aligned_reads
DATA=/media/sf_RNAseq/fastq
#ANNOT=/media/sf_RNAseq/annotation
#BOWTIE=/media/sf_RNAseq/bowtie_index
#TRANS=/media/sf_RNAseq/trans_index

cd $DATA
for foldername in Group*
do
cd $OUT
mkdir "$foldername"
#cd $DATADIR/$foldername/filtered
#do
#echo "I am testing for $filename" > $filename.txt 
done
cd ../..
#done
