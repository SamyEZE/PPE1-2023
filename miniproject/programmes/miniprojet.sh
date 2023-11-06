#!/bin/bash

file=$1

# Vérification qu'un seul argument a été fourni au script
if [ $# -ne 1 ]; then
    echo "Ce script demande en argument un fichier d'URLs."
    exit 1
fi

counter=1

# Lecture du fichier ligne par ligne
while read -r line; do
    infos_page=$(curl -L -I -s -o /dev/null -w "%{http_code}\t%{content_type}" "$line")

    code_reponse=$(echo "$infos_page" | cut -f1)
    encodage=$(echo "$infos_page" | cut -f2 | sed -n 's/.*charset=\(.*\)/\1/p')

    echo -e "${counter}\t${line}\t${code_reponse}\t${encodage}"

    ((counter++))
done < "$file"
