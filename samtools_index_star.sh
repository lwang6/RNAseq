#!bin/bash

cd /home/lwang6/Documents/RNAseq/STAR/alignments

for filename in *.Aligned.sortedByCoord.out.bam
do
samtools index $filename 
done

