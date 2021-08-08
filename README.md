# Snakemake and Singularity Tutorial

Snakemake is a python based workflow management tool. It's very useful when you have a project where you chain a bunch of tools to get a result (e.g. benchmarking your software) and some parts must be distributed in HPC. It also prevents unneccessary re-running.

It would be recommended to use a shared node (16 cores) in Expanse for this tutorial since we will be running stuff.

### Installation

Requirements: Python and conda

Install `mamba` to create a conda environment faster.

`conda install mamba`

Clone this repository and cd to it:

`git clone https://github.com/balabanmetin/snakemake-tutorial.git && cd snakemake-tutorial`

Then create a conda environment for this tutorial:

`mamba create -c conda-forge -c bioconda -n snakeTutorial snakemake-minimal famsa`

Activate conda environment

`conda activate snakeTutorial`

We are ready to go!
