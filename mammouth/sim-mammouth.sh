#~/bin/bash
#PBS -m ea
#PBS -l walltime=10:00:00
#PBS -l nodes=1:ppn=1
#PBS -q qwork
#PBS -r n
#PBS -N sim3
#PBS -t 1-50
#PBS -o log/
#PBS -e log/
#PBS -V

module load bioinformatics/R/3.2.5

SRC=$HOME/coexpression/august2016simulation/linear

Rscript $SRC/simulation.R ${index} $PBS_ARRAYID