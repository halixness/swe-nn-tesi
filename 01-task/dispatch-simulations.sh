#!/usr/bin/env bash

export test_name="input_Baganza_cassa-TAV_V00.txt"
export date=$(date '+%d-%m-%Y_%H.%M')

for bcc in ./input/BCC/*; do
	export bcc_id=$(echo $bcc | awk -F'.' '{print $2}' | tail -c 4)
	export bcc=$(basename $bcc)
	
	mkdir -p $SCRATCH/BAGANZA/tesi/output_$date/{simulation_$bcc_id,decoded_$bcc_id}

	sbatch simulation.slurm
	echo "bcc number: $bcc_id"
done
