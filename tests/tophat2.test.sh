cd /media/sf_RNAseq/fastq/GroupA1/filtered

tophat2 -G /media/sf_RNAseq/annotation/hg19.gtf -o /media/sf_RNAseq/tophat2/aligned_reads/GroupA1 /media/sf_RNAseq/BOWTIE2_INDEX/hg19 -p 12 -r 70 --mate_std-dev 90 GroupA1_filtered_1.fastq GroupA1_filtered_2.fastq

tophat2 -o /media/sf_RNAseq/tophat2/aligned_reads/GroupA1 /media/sf_RNAseq/iGenome_Homo_sapiens_hg19/UCSC/hg19/Sequence/Bowtie2Index/genome \
        -G /media/sf_RNAseq/iGenome_Homo_sapiens_hg19/UCSC/hg19/Annotation/Archives/archive-2015-07-17-14-32-32/Genes/genes.gtf –p 8 \
        -r 70 --mate_std-dev 90 \
        GroupA1_filtered_1.fastq GroupA1_filtered_2.fastq
