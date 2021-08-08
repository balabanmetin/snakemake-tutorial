We will create a `clean` rule that will remove files created by the workflow. If you want to rerun the workflow, you must clean the files. There's other ways of force rerunning some parts of the workflow too. We will see how to do that later on.

Next, we will create a new rule `gtree_infer` for gene tree estimation. Input to this rule is output of `align` rule.

Note that `{g}` cannot be referred directly inside `shell`. You can refer it using `{wildcards.g}`.

Using `log` directive you can specify where stdout and stderr of execution should be saved. If there is multiple input, output, or log files, they are seperated with comma. they are accesses with `.<name>`.

Snakemake infers what chain of rules needs to be executed to produce the given file: 

`snakemake -np -c 4 alignments/p0037/RAxML_bestTree.RUN`

Let's edit the `all` rule so that it generates all gene trees.

