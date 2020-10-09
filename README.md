# aScanDocker
## Docker image for [aScan](https://github.com/Federico77z/aScan) 

### USAGE

1. [Install docker](https://docs.docker.com/get-docker/)
2. docker pull the aScan [docker image](https://quay.io/repository/pmandreoli/ascan) ``docker pull quay.io/pmandreoli/ascan:1.0.3`` 
3. create a directory with all the [input files needed by ascan](https://github.com/Federico77z/aScan#21-synopsis) 
4. run aScan trought docker
 ```
  docker run -v /<absolute path to your local data directory>:/home quay.io/pmandreoli/ascan:1.0.3 --rna rnaseq_bamfile --vcf vcf_file --gtf gtf_file [--nametable transcript/gene_correspondence_file] [-p thread_num] [--filter filter_key_word]
 ```

   **e.g**
```
   docker run -v /home/centos/test/aScan/test_dataset:/home quay.io/pmandreoli/ascan:1.0.3 --rna heart_S12_chr19.bam --vcf S12_def_chr19.vcf --gtf hg19_chr19.gtf
```
5. The aScan outputs will appear in your local directory
