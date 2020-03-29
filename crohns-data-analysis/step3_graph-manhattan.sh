File Edit Options Buffers Tools Sh-Script Help
#$ -cwd
#$ -V
#$ -N graphManhattan
#$ -l h_rt=0:15:00,h_data=3G
#$ -M $USER
#$ -o ./output3-graph/outlog
#$ -e ./output3-graph/error


python /u/home/r/ryanmtra/linkPasaniuc/ryanmtra/HessAssignment/hess/misc/local_hsqg_manhattan.py \
    --local-hsqg-est ./output2-HessStep2/step2.txt \
    --out ./output3-graph/chronDisease.pdf \
    --trait-name CHR