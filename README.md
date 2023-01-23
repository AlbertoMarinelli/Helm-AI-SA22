# Helm AI

Project for the Smart Applications course @ [University of Pisa](https://www.unipi.it/index.php/english)

<img src="imgs/unipi_logo.png" align="right" alt="Unipi logo">

Authors: [Alberto Marinelli](https://github.com/AlbertoMarinelli), [Luca Moroni](https://github.com/Andrew-Wyn), [Davide Amadei](https://github.com/davideamadei), [Diego Arcelli](https://github.com/DiegoArcelli), [Pietro Francaviglia](https://github.com/frankpietro), [Giacomo Cignoni](https://github.com/giacomo-cgn), [Gabriele Marino](https://github.com/GM862001), [Irene Pisani](https://github.com/irenepisani), [Alessandro Capurso](https://github.com/Jek9884), [Roberto Esposito](https://github.com/robbespo00), [Sergio Latrofa](https://github.com/Sergio-Ltr), [Veronica Pistolesi](https://github.com/VeronicaPistolesi)


### Goal
<b>Helm</b> is a customizable <b>AI-based research assistant</b>, for innovation managers and academics who need to retrieve and analyze the most significant sources for any research field. 

<b>Helm</b> will propose to users the best documents and insights according to their queries through a simple interactive dashboard. 

Unlike traditional academic search engines, Helm intuitively provides <b>topic-centered</b> visualizations, filters and rankings.

<br /><br />

### Running the Project
Clone the entire orchestrator repository with the command

`git clone --recurse-submodules https://github.com/Helm-AI-SA22/orchestrator`

move to the orchestrator folder

`cd orchestrator`

check that you are on the master branch and have pulled the last commits

`git checkout master`

`git pull`

Update the three sub repos with the instruction: 

`git submodule update --recursive --remote`

Containers of the three sub-modules can be executed by launching them from the orchestrator folder (execution will take several minutes): 

`make build` 

To test the correct functioning of the containers, query the following addresses: 

`localhost:5000`
`localhost:5001`
`localhost:3000`

# Command 'make' not found
If you do not have the make command (i.e. you are on a Windows environment) 
install make via chocolately, opening the terminal with administrator permissions: 

`choco install make`

If you do not have chocolately, install from https://docs.chocolatey.org/en-us/choco/setup

# Frontend in windows environment

Running the frontend from the Docker container can take several minutes in a Windows environment, slowing down the development process too much. 
If you wish to develop on FE via a Windows environment, it is recommended to stop the frontend container (i.e. via Docker Desktop) and run the module locally: 

`cd frontend`

`npm install` 

`npm start`

To activate the BE and AI modules, use the instruction directly from the orchestrator:

`make build-dev` 

### System Architecture
<p align="center">
<img src="imgs/ontology_image.png" alt="System Architecture"  width="80%" height="80%">
</p>
<br /><br />

<h3 align="left">GUI</h3>
<p align="center">
<img src="imgs/ontology_image.png" alt="System Architecture"  width="80%" height="80%">
</p>
