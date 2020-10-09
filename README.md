# aScanDocker
## Docker image for [aScan](https://github.com/Federico77z/aScan) 

###USAGE

1. [Install docker](https://docs.docker.com/get-docker/)
2. docker pull the aScan docker image 
3. create a directory ``data`` with all the [input files needed by ascan](https://github.com/Federico77z/aScan#21-synopsis) 
4. run aScan trought docker ``docker run -v /<absolute path to your local data directory>:/home ascan --rna rnaseq_bamfile --vcf vcf_file --gtf gtf_file [--nametable transcript/gene_correspondence_file] [-p thread_num] [--filter filter_key_word]``
