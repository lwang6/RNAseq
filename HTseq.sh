#!/bin/bash

#Make sure there is no space between = and / when define a path using a variable


STAR_INDEX=/home/lwang6/Documents/RNAseq/STAR_hg19
alignment=/home/lwang6/Documents/RNAseq/STAR/alignments
ANNOT=/home/lwang6/Documents/RNAseq/iGenome_Homo_sapiens_hg19/UCSC/hg19/Annotation/hg19.gtf
Counts=/home/lwang6/Documents/RNAseq/STAR/Counts

cd $alignment
for filename in *.Aligned.out.bam
do
echo "I am running htseq-count for STAR aligned $filename"
#mv accepted_hits.bam $foldername_accepted_hits.bam
#samtools sort  $foldername_accepted_hits.bam  $filename_sorted.bam
#samtools index $foldername_sorted.bam
#samtools sort -n  $foldername_accepted_hits.bam $filename_namesorted
#samtools view -o $foldername_sorted.sam $foldername_sorted.bam

#Unlike Tophat2, the Unsorted BAM file output from STAR is ready for HTseq, no need for name sorting
htseq-count -f bam --stranded=no -a 10 $filename $ANNOT > $Counts/$filename\_counts.txt
#cd ../..
done
echo "htseq-count done" | mail -s "htseq-count is done" lwang6@hawaii.edu
