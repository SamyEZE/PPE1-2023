#!/bin/bash

# Vérification des arguments
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 [nom du fichier] [nombre de mots a afficher (ops)]"
    exit 1
fi

nom_fichier=$1
nombre_mots=${2:-25} # Par défaut, affiche les 25 mots les plus fréquents si aucun second argument n'est donné

# Utilisation de script_traitement1.sh pour nettoyer le fichier
./script_traitement1.sh "$nom_fichier" |

# Tri des mots, comptage des occurrences, tri par fréquence, puis affichage des N premiers
sort | uniq -c | sort -nr | head -n "$nombre_mots"
