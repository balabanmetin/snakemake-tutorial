#! /bin/bash

# alignment tool
mkdir -p alignments/p0037
famsa -t 4 data/sequences/p0037.fa alignments/p0037/aln.fa

# gene tree estimation
module load cpu/0.15.4  gcc/10.2.0  openmpi/4.0.4
module load raxml/8.2.12

raxmlHPC-PTHREADS-SSE3 -s alignments/p0037/aln.fa -T 4 -m GTRCAT -n RUN -p 12345 -w `realpath alignments/p0037` > alignments/p0037/log.out 2> alignments/p0037/log.err

# species tree estimation
mkdir -p trees/
cat alignments/*/RAxML_bestTree.RUN > trees/all_gene_trees.nwk
java -D"java.library.path=Astral/lib" -jar Astral/astral.5.15.4.jar -i trees/all_gene_trees.nwk -o trees/astral_mp.nwk  > trees/astral.out 2> trees/astral.err
