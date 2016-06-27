#!/bin/bash

export PATH=$PATH:'/home/lwang6/Documents/Program/STAR-STAR_2.5.0a'

cd /home/lwang6/Documents/RNAseq
STAR_INDEX=./STAR/STAR_hg19
FASTA=./iGenome_Homo_sapiens_hg19/UCSC/hg19/Sequence/hg19.fa
ANNOT=./iGenome_Homo_sapiens_hg19/UCSC/hg19/Annotation/hg19.gtf


STAR --runMode genomeGenerate --genomeDir ./STAR/STAR_hg19 \
 --genomeFastaFiles ./iGenome_Homo_sapiens_hg19/UCSC/hg19/Sequence/hg19.fa \
 --sjdbGTFfile ./iGenome_Homo_sapiens_hg19/UCSC/hg19/Annotation/hg19.gtf \
 --runThreadN 20
