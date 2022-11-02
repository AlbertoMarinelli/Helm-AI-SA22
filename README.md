# Clone the repository
Clonare l'intera repository dell'orchestrator con il comando 

`git clone --recurse-submodules https://github.com/Helm-AI-SA22/orchestrator`

spostarsi nella cartella dell'orchestator

`cd orchestrator`

controllare di trovarsi sul branch master e di aver fatto pull degli ultimi commit.

`git checkout master`

`git pull`

Aggiornare le tre sotto repo con l'istruzione: 

`git submodule update --recursive --remote`

I container dei tre sottomoduli possono essere eseguti  lanciando, dalla cartella dell'orchestator( l'esecuzione richiederà diversi minuti ): 

`make build` 

per testare il corretto funzionamento dei container interrogare i seguenti indirzzi: 

`localhost:5000`
`localhost:5001`
`localhost:3000`

# Comando "make" non trovato
Qualora non si disponesse del comando make (i.e. ci si trova su ambiente Windows), 
installare make tramite chocolately, aprendo il terminale con i permessi da amministratore: 

`choco install make`

Qualora non si disponga di chocolately, installora da https://docs.chocolatey.org/en-us/choco/setup

# Frontend in ambiente windows

L'esecuzione del frontend da container docker può richiedere svariati minuti in ambiete windows, rallendando troppo il processo di sviluppo. 
Qualora si desidrei sviluppare su FE tramite ambiente Windows si consiglia di stoppare il container del frontend (i.e. tramite Docker Desktop)
e di eseguire il modulo in locale: 

`cd frontend`

`npm install` 

`npm start`


# Resources for git dummies

`` Quick explanation of why and how Git works as it does: https://www.simplilearn.com/tutorials/git-tutorial/what-is-git

Brief overview of the basic commands for Git, with further details on each one: https://www.atlassian.com/git/glossary

Tutorial on how to use Git, step-by-step: https://product.hubspot.com/blog/git-and-github-tutorial-for-beginners
