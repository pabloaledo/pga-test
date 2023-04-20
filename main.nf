nextflow.enable.dsl = 2

process WHEN {
    output:
    path 'outputfile'

    script:
    """
    #!/bin/bash
    for count in `seq 1 10`
    do
        (for n in `seq 1 51`; do for a in {0..9}; do echo -n \$a; done; done ; echo -n '01')
    done | dd of=outputfile
    """
}

workflow {
    WHEN()
}
