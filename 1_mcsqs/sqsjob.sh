#!/bin/bash
#SBATCH --job-name=hea-sqs
#SBATCH --partition=k2-hipri
#SBATCH --ntasks=8
#SBATCH --mem-per-cpu=2G

for i in {1..8}; do
  mcsqs -rc -ip=$i &
done
wait
