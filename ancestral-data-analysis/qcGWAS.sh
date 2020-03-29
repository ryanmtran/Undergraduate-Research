#!/bin/bash

#$ -cwd
#$ -V
#$ -N formatGWAS
#$ -l h_rt=0:45:00,h_data=4G
#$ -M $USER
#$ -o ./output-formatGWAS/output
#$ -e ./output-formatGWAS/error

zcat /u/project/pasaniuc/pasaniucdata/DATA/blood_cell_consortium/0_raw_data/BCX2_BAS_EUR_GWAMA.out.gz |

#Displays only the specific columns that are necessary to run HESS
awk -F'\t' 'BEGIN{OFS="\t"} {print $1, $1, $1, $2, $3, $9, $16}'  > output1
#removes first row
sed -i 1d output1 
#removes all items after colon in second row
awk '{sub(/\:.*$/,"",$2)}1' OFS="\t" output1 > output2

#removes all items before colon in third row
awk '{$3=A[split($3,A,":")]}1' output2 > output3
#removes all itemes after _ in third row
awk '{sub(/\_.*$/,"",$3)}1' OFS="\t" output3 > output4

echo -e "SNP\tCHR\tBP\tA1\tA2\tZ\tN" > output5
cat output4 >> output5

#Deletes temporary variables we made
for i in {1..4}
do
    rm output$i
done

mv output5 output