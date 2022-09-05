####################################################################
## Plot Sequencing Depth $ each basepair of the full genome length #
## X-axis is the basepair position                                 #
## Y-axis is the sequencing depth                                  #
####################################################################

## The input file can be generated after aligning the trimmed reads onto Reference Genome
## and run command below to get the out.coverage file
## samtools depth -a --reference RefGenome.fasta out_sorted.bam > 1_out.coverage

EF536003 <- read.table("/Users/Elizabeth/Desktop/1_out.coverage",
                       header=FALSE, sep="\t", na.strings="NA", dec=".", strip.white=TRUE)
library(reshape)
EF536003 <-rename(EF536003,c(V1="Ref", V2="ReferencGenome_15182bp", V3="Depth"))
plot(EF536003$ReferencGenome_15182bp, EF536003$Depth)
library(lattice, pos=10) 
xyplot(Depth ~ ReferencGenome_15182bp, type="l", pch=16, auto.key=list(border=TRUE), 
       par.settings=simpleTheme(pch=16), 
       scales=list(x=list(relation='same'), y=list(relation='same')), 
       data=EF536003, main="Sequencing Depth per bp - map to EF536003.1")
