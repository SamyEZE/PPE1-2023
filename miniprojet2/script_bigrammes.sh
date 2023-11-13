#!/bin/bash

# Vérification de l'argument : nom du fichier
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 [nom du fichier]"
    exit 1
fi

NOM_FICHIER=$1

# Vérification que script_traitement1.sh existe et est exécutable
if ! [ -x "./script_traitement1.sh" ]; then
    echo "script_traitement1.sh introuvable ou non exécutable."
    exit 1
fi

# Utilisation de script_traitement1.sh pour nettoyer le fichier
./script_traitement1.sh "$NOM_FICHIER" > temp.txt

# Création des bigrammes
tail -n +2 temp.txt > temp2.txt # Décale les lignes d'un rang
paste temp.txt temp2.txt | sort | uniq -c | sort -nr

# Nettoyage des fichiers temporaires
rm temp.txt temp2.txt
