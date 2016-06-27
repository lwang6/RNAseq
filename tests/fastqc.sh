#!/bin/bash

cd /media/sf_Ubuntu_share

for foldername in Group*
do
cd $foldername/
for filename in Group*
do
fastqc $filename*.fastq -o /media/sf_Ubuntu_share/Group*/FASTQC/
done
cd ..
done
