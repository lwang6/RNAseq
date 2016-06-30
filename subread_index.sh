#!/bin/bash

ANNOT=/home/lwang6/Documents/RNAseq/iGenome_Homo_sapiens_hg19/UCSC/hg19/Sequence/Bowtie2Index/hg19.fa
cd /home/lwang6/Documents/RNAseq/Rsubread
mkdir subread_index

subread-buildindex -o hg19 $ANNOT
