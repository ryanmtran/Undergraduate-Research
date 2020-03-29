#!/bin/bash

#$ -cwd
#$ -V 
#$ -N step1 
#$ -l h_data=1G,time=1:00:00 
#$ -t 1-22:1 
#$ -M $USER
#$ -o ./output1-HessStep1/joblog
#$ -e ./output1-HessStep1/error




chrom=$SGE_TASK_ID
python hess/hess.py\
        --local-hsqg CROHNS_2015.txt.gz\
        --chrom $chrom \
        --bfile /u/project/pasaniuc/pasaniucdata/DATA/LDSC/1000G_EUR/1000G_EUR_Phase3_plink/1000G.EUR.QC.${chrom}\
        --partition /u/home/r/ryanmtra/linkPasaniuc/ryanmtra/HessAssignment/ldetect-data/EUR/fourier_ls-chr$chrom.bed\
        --out ./output1-HessStep1/step1
