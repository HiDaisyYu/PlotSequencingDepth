# SequencingQualityRelated


#### The script 'R_Depth_each_basepair_plot' 
is used to plot Sequencing Depth for each basepair of the full genome length

X-axis is the nucleotide position, Y-axis is the sequencing depth

The input file can be generated after aligning the trimmed reads onto Reference Genome
and run command below to get the out.coverage file
% samtools depth -a --reference RefGenome.fasta out_sorted.bam > 1_out.coverage
1_out.coverage is the input file and you can download the test file (1_out.coverage) to try this R script locally. 
