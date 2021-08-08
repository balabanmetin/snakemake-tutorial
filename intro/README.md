In this tutorial, we will implement a simple workflow described in [workflow.sh](workflow.sh).

Take a look at [data](data) directory where we have nucleotide sequences for 10 genes.

Let's begin with aligning gene `p0037` using Snakemake. 

We will complete [Snakefile](Snakefile). The completed version is [Snakefile.complete](Snakefile.complete)

For a snakemake dry run:

`snakemake -np -c1 all`

To execute the main rule (all):

`snakemake -c 1 all`

Increase number of cores so that jobs can run in parallel:

`snakemake -c 16 all`

You can run a single gene (not necessarily the one we picked for all) like this:

`snakemake -c 4 alignments/p0003/aln.fa`


