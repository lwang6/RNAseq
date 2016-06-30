#!/bin/bash

cd  ~/Documents/test/test_data
#mkdir FASTQC

for filenames in reads_*
do
fastqc $filename -o ./FASTQC
done
