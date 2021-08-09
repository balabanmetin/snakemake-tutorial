It is straightforward to add the last step of the pipeline which is ASTRAL. 


Since we completed the pipeline, now it's time to demonstrate features of Snakemake. The first feature is partial and full rerun.

Say you changed the ASTRAL command and you want to rerun *only* the ASTRAL step:

`snakemake -np -c 16 -R trees/astral_mp.nwk`

This will rerun the rule that generates `trees/astral_mp.nwk`

If you want to force rerun all commands that lead to the file `trees/astral_mp.nwk`, run:

`snakemake -np -c 16 -F trees/astral_mp.nwk`

