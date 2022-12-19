process download_reads_1 {

    input:
        val(accession)
        
    output:
        path "*.fq.gz", emit: output1
        
    script:
    """
#!/usr/bin/env bash

#accession='$accession'
#fasterq-dump $accession
wget https://gel-lifebit-featured-datasets.s3.eu-west-1.amazonaws.com/pipelines/parabricks/example/data/fastq/testdata-2X_2.fq.gz
    """

}
