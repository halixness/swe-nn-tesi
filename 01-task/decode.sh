#!/usr/bin/env bash

# $1: test name
# $2: datetime of the test
# $3: BCC file id

nome_test="$1"
bcc_id="$3"

livello_ris=2

percorso="$SCRATCH/BAGANZA/tesi/output_$2"
nome_file_last="$nome_test-output-LAST"

swegpu=$SCRATCH/swegpu

$swegpu -decode $percorso/simulation_$bcc_id/$nome_file_last.MAXWSE $percorso/decoded_$bcc_id/$nome_test-decoded-last.MAXWSE -all -binary=0 -res=$livello_ris
$swegpu -decode $percorso/simulation_$bcc_id/$1-output-LAST.BTM	$percorso/decoded_$bcc_id/$1-decoded-last.BTM -all -binary=0 -res=$livello_ris
