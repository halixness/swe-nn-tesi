### Task 1
Generazione matrice binaria celle asciutte da portata variabile in input.

#### Passaggi:
- Script generatore portata:
  - *(N)* Modifica e genera i file BCC (START: 0,01840, END: 0,1840, STEPS: 100)
  - *(N)* Generare dataset (file numpy con array di portate)
- Simulazioni:
  - [X] *(S)* Creare script automatici per le varie N versioni del file BCC
  - [X] *(S)* Lanciare le N simulazioni
  - [X] *(S)* Effettuare il decode con diversi livelli di risoluzione (**2x, 3x**)
  - *(D)* Da ogni simulazione plottare LAST_WSE e LAST_DEP
  - *(D)* Da ogni simulazione calcolare LAST_WSE - LAST_BTM, poi generare matrice binaria (**soglia = 5e-3, 1e-3**) e plottare queste matrici binarie
- **TEST SIGNIFICATO PLOT DELLE MATRICI**
- Rete Neurale:
  - Due possibili input:
    - Valore portata (feed forward semplice)
    - Valore portata + matrice batimetria (combined CNN)
  - Fine tuning & pray


### Prerequisiti per avviare il progetto
- L'eseguibile **swegpu** deve essere in questa cartella
- Copiare questa cartella nel cluster HPC
- Creare la cartella `/hpc/scratch/<username>/tesi`

### Per avviare il progetto
`./dispatch-simulations.sh`
Si prevedono tempi di esecuzione di circa 15 minuti

### Output del progetto
Recuperabile sul cluster, nella cartella `tesi` in scratch dell'utente, sotto `output_<data_avvio_sbatch>`
