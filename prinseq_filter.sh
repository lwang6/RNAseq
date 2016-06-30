#!/bin/bash

cd /media/sf_RNAseq/fastq
for foldername in Group*
do
cd $foldername/
for filename in Group*
do
echo "I am running prinseq filter for $filename"
prinseq-lite -fastq *_1.fastq -fastq2 *_2.fastq -min_qual_mean 20 \
               -out_good $filename.filtered -out_bad null \
               -out_format 3  –no_qual_header\
               –log /media/sf_RNAseq/log_files/prinseq_filter.log.txt

done
cd ..
done
