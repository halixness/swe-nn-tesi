### Task 1
Generazione matrice binaria celle asciutte da portata variabile in input.

#### Passaggi:
- Script generatore portata:
  - *(N)* Modifica e genera i file BCC (START: 0,01840, END: 0,1840, STEPS: 100)
  - *(N)* Generare dataset (file numpy con array di portate)
- Simulazioni:
  - *(S)* Creare script automatici per le varie N versioni del file BCC
  - *(S)* Lanciare le N simulazioni
  - *(D)* Effettuare il decode con diversi livelli di risoluzione (**2x, 3x**)
  - *(D)* Da ogni simulazione plottare LAST_WSE e LAST_DEP
  - *(D)* Da ogni simulazione calcolare LAST_WSE - LAST_BTM, poi generare matrice binaria (**soglia = 5e-3, 1e-3**) e plottare queste matrici binarie
- **TEST SIGNIFICATO PLOT DELLE MATRICI**
- Rete Neurale:
  - Due possibili input:
    - Valore portata (feed forward semplice)
    - Valore portata + matrice batimetria (combined CNN)
  - Fine tuning & pray
  
  
  

