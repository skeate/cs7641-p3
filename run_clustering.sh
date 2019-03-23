#!/bin/sh

# Replace 'X' below with the optimal values found
# If you want to first generate data and updated datasets, remove the "--skiprerun" flags below

python run_experiment.py --ica --wine     --dim 6  --skiprerun --verbose --threads -1 2>&1 | tee ica-wine-clustering.log
python run_experiment.py --ica --gestures --dim 16 --skiprerun --verbose --threads -1 2>&1 | tee ica-gestures-clustering.log
python run_experiment.py --pca --wine     --dim 3  --skiprerun --verbose --threads -1 2>&1 | tee pca-wine-clustering.log
python run_experiment.py --pca --gestures --dim 23 --skiprerun --verbose --threads -1 2>&1 | tee pca-gestures-clustering.log
python run_experiment.py --rp  --wine     --dim 9  --skiprerun --verbose --threads -1 2>&1 | tee rp-wine-clustering.log
python run_experiment.py --rp  --gestures --dim 8  --skiprerun --verbose --threads -1 2>&1 | tee rp-gestures-clustering.log
python run_experiment.py --rf  --wine     --dim 3  --skiprerun --verbose --threads -1 2>&1 | tee rf-wine-clustering.log
python run_experiment.py --rf  --gestures --dim 15 --skiprerun --verbose --threads -1 2>&1 | tee rf-gestures-clustering.log
#python run_experiment.py --svd --wine --dim X  --skiprerun --verbose --threads -1 > svd-wine-clustering.log 2>&1
#python run_experiment.py --svd --htru2   --dim X  --skiprerun --verbose --threads -1 > svd-htru2-clustering.log   2>&1
