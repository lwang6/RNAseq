#!bin/bash



DATA=/home/lwang6/Documents/RNAseq/tophat2/aligned_reads



cd $DATA
for foldername in Group*
do
cd ./$foldername
echo "I am sorting bam files by chromosomal coordinates for $foldername"
samtools sort -o  $foldername\_alignments.sorted $foldername\_accepted_hits.bam 
samtools index $foldername\_accepted_hits.bam 

echo "I am sorting by name for $foldername "
samtools sort -n  -o  $foldername\_alignments.namesorted  $foldername\accepted_hits.bam  

#echo "I am running htseq-count for name sorted $filename"
#htseq-count -s no -a 10 $filename.sorted_n.sam $ANNOT > $filename.count 

cd ../..
done

