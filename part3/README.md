The final feature of Snakemake is my favorite one. You can very easily distribute these jobs in HPC using Snakemake. You need two things. First you add a statement in the beginning of your Snakefile showing what rules are run locally (i.e. should not be submitted to SLURM).

`localrules: all, clean`
