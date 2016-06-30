#!bin/bash

DATA=/home/lwang6/Documents/RNAseq/tophat2/aligned_reads

cd $DATA
for foldername in Group*
do
cd ./$foldername
echo "I am sorting bam files for $foldername"
samtools sort -o  $foldername\_alignments.sorted.bam $foldername\_accepted_hits.bam 
samtools index $foldername\_alignments.sorted.bam
samtools sort -o  $foldername\_alignments.namesorted.bam  -n  $foldername\_accepted_hits.bam  
cd ..
done

