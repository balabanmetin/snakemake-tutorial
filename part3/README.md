The final feature of Snakemake is my favorite one. You can very easily distribute these jobs in HPC using Snakemake. You need two things. First you add a statement in the beginning of your Snakefile showing what rules are run locally (i.e. should not be submitted to SLURM).

`localrules: all, clean`

Next, you need to have a Snakemake profile which is unique to a HPC. I already created an Expanse profile, which you can use off-the-shelf as long as you are in the same group "uot138".
In the profile `config.yaml`, we describe the details of how a job should be run on a node.

If you want to deviate from default number of cpus and memory for a specific rule, you can add a statement like this:

`resources: mem_mb=10000, cpus=10`

Check everything is setup correctly by printing the execution plan.

`snakemake -c 1 --profile expanse_profile -np all`

 You can execute the workflow on HPC compute nodes by simply running:

`snakemake -c 1 --profile expanse_profile all`


