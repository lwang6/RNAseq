#!/bin/bash

echo 'I am converting sra to fastq file for pair end'
cd /media/sf_Ubuntu_share/GroupB

for filename in GroupB
do
echo "I am running $filename"
fastq-dump --split-3 $filename &> ../log_file/$filename.fastqdump_log.txt
done
cd ..
done
