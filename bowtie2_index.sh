#!/bin/bash

# cd /media/sf_RNAseq/tophat2/
# mkdir GRCh38_index
# mkdir trans_index

mkdir /home/lwang6/Documents/RNAseq/BOWTIE2_INDEX
BOWTIE_INDEX=/home/lwang6/Documents/RNAseq/BOWTIE2_INDEX
FASTA=/home/lwang6/Documents/RNAseq/UCSC_hg19_fasta/hg19.fa


#pre-build genome_index (bowtie2) and 
bowtie2-build -f $FASTA $BOWTIE_INDEX/hg19


