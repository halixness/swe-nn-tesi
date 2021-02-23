## Previsione livelli WSE
Generazione matrice binaria celle asciutte da portata variabile in input.

#### Passaggi:
### Prerequisiti per avviare il progetto
- **Creare la cartella $SCRATCH/BAGANZA**
- La cartella `$SCRATCH/BAGANZA` deve contenere i seguenti elementi:
  - **swegpu**
  - **input/**
    - BCC
    - *tutti i file input alla simulazione*
  - **output/**
    - *output_XX-XX-XXXX_XX.XX* cartella simulazione
      - *decoded_XXX*

- Creare la cartella `/hpc/scratch/<username>/tesi`

### Per avviare il progetto
Eseguire `./dispatch-simulations.sh`.
Si prevedono tempi di esecuzione di circa 15 minuti

### Risultati dello script
Recuperabile sul cluster, nella cartella `$SCRATCH/tesi` in scratch dell'utente, sotto `output_<data_avvio_sbatch>`
Copiare queste cartelle output dentro `$SCRATCH/output/`.

## Generazione dei file target
Il programma `generate_target.py` permette la generazione delle matrici target e dei plot BTM-WSE per ogni simulazione.
(Il flag -p viene usato per settare il prefisso per ogni simulazione, esempio Baganza_cassa-TAV_V00)
Usage: `python generate_target.py -p xxx -o output_xx_xx_xxxx-xx.xx -n numero_files_bcc`

### Risultati dello script
Il programma genererá due cartelle sotto `output/output_xx_xx_xxxx-xx.xx`:
- `plots`, contenente i plot delle matrici \*LAST.BTM e \*LAST.MAXWSE per ogni simulazione, nel formato `btm/maxwse_XX.png`
- `targets`, contenente `5mm` e `1mm`, ciascuna con una serie di matrici binarie per ogni numero simulazione. Con il flag `-npy 1` lo script esporterá anche gli array di matrici `5mm` e `1mm` in due comodi file `.npy`.
