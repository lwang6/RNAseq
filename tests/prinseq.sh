#!/bin/bash


for foldername in Group*
do
cd $foldername
for filename in Group*    
do
echo "I am running $filename"
mkdir prinseq_log
prinseq-lite -fastq *_1.fastq -fastq2 *_2.fastq -no_qual_header --min_qual_mean 20 -out_format 3 -out_good $filename.prinseq  -log prinseq_log/filter_log.txt
echo "I am running  fastx $filename"
fastx_quality_stats -Q33 -i $filename.prinseq_*.fastq -o $filename.prinseq_*.fastq.stats 
done
cd ..
done

