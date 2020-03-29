#$ -cwd
#$ -V
#$ -N step2Hess
#$ -l h_rt=0:45:00,h_data=4G
#$ -M $USER
#$ -o ./output2-HessStep2/outlog
#$ -e ./output2-HessStep2/error


#Below is step 2 of running hess
python /u/home/r/ryanmtra/linkPasaniuc/ryanmtra/HessAssignment/hess/hess.py --prefix ./output1-HessStep1/step1 --out ./output2-HessStep2/step2