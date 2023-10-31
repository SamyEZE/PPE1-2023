#!/bin/bash

# Récupère l'année en tant qu'argument
an=$1

nombrelocation=$(grep -r 'Location' ./$an_*_* | wc -l)

# montre le result 
echo "Nombre de 'Location' pour l'année $an: $nombrelocation"
