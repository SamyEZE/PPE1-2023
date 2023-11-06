#Pourquoi ne pas utiliser cat ? 

on pourrait utiliser la commande 'cat' pour afficher le contenu de tout le
fichier, mais 'read' est plus pertinent dans ce cas car il permet de
lire et traiter chaque ligne individuellement dans un script ce qui nous
permettrait recuperer les URLS.

#Comment transformer "urls/fr.txt" en paramètre du script ? 

2/ pour transformer urls/fr.txt en parametre du script on peut utiliser une
variable speciale '$1' 
ce qui nous donne : 

while read -r line;
do
echo ${line};
done < "$1";

2.1/et pour s'assurer qu'on donne bien un argument au script, sinon on s'arrete
on procede comme suit :


# Vérifie si un argument a été fourni
if [ $# -eq 0 ]; then
    echo "Erreur, pas d'argument fourni ! "
    exit 1
fi

# Utilise l'argument fourni pour lire le fichier
while read -r line;
do
    echo ${line};
done < "$1"

##Comment afficher le numéro de ligne avant chaque URL (sur la même ligne) ?

3/ 
pour afficher le numero de ligne avant chaque URL et sur la meme ligne on 
peut utiliser une variable pour compter les ligne et 'echo' pour afficher
le numero de ligne et l'url : 

# Vérifie si un argument a été fourni
if [ $# -eq 0 ]; then
    echo "Erreur : pas d'argument fourni !."
    exit 1
fi

line_number=1

# Lit le fichier ligne par ligne
while read -r line;
do
# Affiche le numéro de ligne et l'URL, séparés par une tabulation
    echo -e "${line_number}\t${line}"
    ((line_number++))
done < "$1" 

