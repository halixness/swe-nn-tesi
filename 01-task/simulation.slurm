#!/usr/bin/env bash

#SBATCH --time=0-0:25:00
#SBATCH --ntasks-per-node=1
#SBATCH --mem=32G
#SBATCH --partition=gpu
#SBATCH --gres=gpu:tesla:1
#SBATCH --job-name=swe-baganza
#SBATCH --output=stdout-%j.log
#SBATCH --error=stderr-%j.log
#SBATCH --account=T_STAGE_ALESSANDRO_DALPALU

# Setting up the environment
date=$date
bcc_id=$bcc_id
bcc=$bcc

nome_utente=$USER
test_dir=input					# Input dir
output_dir_name="output_$date"			# Output dir
input_file="input_Baganza_cassa-TAV_V00.txt"		# Parameter file
input_map="Baganza_cassa-TAV_V00"			# Input maps name
output_file="output.txt"			# Output file
swegpu=$SCRATCH/BAGANZA/swegpu				# Path to executable

export OUTPUT_DIR=$SCRATCH/BAGANZA/tesi/$output_dir_name/
export PATH=/hpc/share/tools/cuda-8.0.61/bin:$PATH
export LD_LIBRARY_PATH=/hpc/share/tools/cuda-8.0.61/lib64:$LD_LIBRARY_PATH

input_dir="$SCRATCH/BAGANZA/input"
simulation_output_dir="$OUTPUT_DIR/simulation_$bcc_id"

# Simulation Phase
cd "${simulation_output_dir}"

ln -s $input_dir/$input_file

for f in $input_dir/$input_map.*; do
	ln -s "$f"
done

ln -s $input_dir/BCC/$bcc $input_map.BCC

${swegpu} ${input_file} -gpu=0 -order=1 -multi=hi > ${output_file}

# Decode Phase
ln -s $SCRATCH/BAGANZA/decode.sh
./decode.sh $input_map $date $bcc_id
