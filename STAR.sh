#!/bin/bash

#Make sure there is no space between = and / when define a path using a variable


DATA=/home/lwang6/Documents/RNAseq/fastq
STAR_INDEX=/home/lwang6/Documents/RNAseq/STAR/STAR_hg19
#FASTA=/home/lwang6/Documents/RNAseq/iGenome_Homo_sapiens_hg19/UCSC/hg19/Sequence/hg19.fa
ANNOT=/home/lwang6/Documents/RNAseq/iGenome_Homo_sapiens_hg19/UCSC/hg19/Annotation/hg19.gtf
OUT=/home/lwang6/Documents/RNAseq/STAR/alignments

cd $DATA
for foldername in Group*
do
cd ./$foldername/filtered
echo "I am running STAR alignment for filtered $foldername"
STAR --genomeDir $STAR_INDEX --readFilesIn $foldername\_filtered_1.fastq $foldername\_filtered_2.fastq  \
--runThreadN 12  --outFileNamePrefix $OUT/$foldername. \
--clip3pNbases 4 --sjdbGTFfile $ANNOT \
--outSAMtype BAM Unsorted SortedByCoordinate
cd ../..
done
