#!/bin/bash

file=$1

# Vérification qu'un seul argument a été fourni au script
if [ $# -ne 1 ]; then
    echo "Ce script demande en argument un fichier d'URLs."
    exit 1
fi

counter=1

# Début du tableau HTML
echo "<html><body>"
echo "<table border='1'>"
echo "<tr><th>N°</th><th>URL</th><th>Code Réponse</th><th>Encodage</th></tr>"

# Lecture du fichier ligne par ligne
while read -r line; do
    infos_page=$(curl -L -I -s -o /dev/null -w "%{http_code}\t%{content_type}" "$line")

    code_reponse=$(echo "$infos_page" | cut -f1)
    encodage=$(echo "$infos_page" | cut -f2 | sed -n 's/.*charset=\(.*\)/\1/p')

    # Ajout d'une ligne au tableau HTML pour chaque URL
    echo "<tr><td>${counter}</td><td>${line}</td><td>${code_reponse}</td><td>${encodage}</td></tr>"

    ((counter++))
done < "$file"

# Fin du tableau et du document HTML
echo "</table>"
echo "</body></html>"
