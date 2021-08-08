# Snakemake and Singularity Tutorial

Snakemake is a python based workflow management tool. It's very useful when you have a project where you chain a bunch of tools to get a result (e.g. benchmarking your software) and some parts must be distributed in HPC. It also prevents unneccessary re-running.

### Installation

Requirements: Python and conda

Install `mamba` to create a conda environment faster.

`conda install mamba`

Clone this repository and cd to it:

`git clone https://github.com/balabanmetin/snakemake-tutorial.git && cd snakemake-tutorial`

Then create a conda environment for this tutorial:

`mamba create `

Activate conda environment

`conda activate snakemakeTutorial`


It would be recommended to use a shared node (16 cores) in expanse for this tutorial since we will be running stuff. 
