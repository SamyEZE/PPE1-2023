#!/bin/bash

# Vérifie si un argument (nom de fichier) est donné
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 [nom du fichier]"
    exit 1
fi

# Lecture et traitement du fichier
cat "$1" | tr ' ' '\n' | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]'
