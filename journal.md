#Journal de bord du projet encadré
=======
## Travail du 10/4

Aujourd'hui, j'ai travaillé sur git et la manipulation de fichiers

## aujourd'hui j'ai essayé de retrouver mes commentaires mis dans oups.md la séance précédente et je les ai
## copié ici : 
#{ 2023-10-10 22:40:18 ⌚  Samy in /mnt/c/users/sami-/dricetnæ/PPE1-2023
± |main ✓| → git checkout brance-oups
Switched to branch 'brance-oups'

 2023-10-10 22:40:29 ⌚  Samy in /mnt/c/users/sami-/dricetnæ/PPE1-2023
± |brance-oups ✓| → ls
README.md  journal.md
c
 2023-10-10 22:40:39 ⌚  Samy in /mnt/c/users/sami-/dricetnæ/PPE1-2023
± |brance-oups ✓| → cat oups.md
cat: oups.md: No such file or directory

 2023-10-10 22:40:45 ⌚  Samy in /mnt/c/users/sami-/dricetnæ/PPE1-2023
± |brance-oups ✓| → ls
README.md  journal.md

 2023-10-10 22:41:16 ⌚  Samy in /mnt/c/users/sami-/dricetnæ/PPE1-2023
± |brance-oups ✓| → nano journal.md

 2023-10-10 22:41:42 ⌚  Samy in /mnt/c/users/sami-/dricetnæ/PPE1-2023
± |brance-oups ✓| → git checkout

 2023-10-10 22:41:56 ⌚  Samy in /mnt/c/users/sami-/dricetnæ/PPE1-2023
± |brance-oups ✓| → git log --full-history -- oups.md
commit e3c23fa7358ad676871888e34e9a924f7ac82771 (HEAD -> brance-oups)
Author: SamyEZE <sami.boudemagh@gmail.com>
Date:   Wed Oct 4 11:08:44 2023 +0200

    modification test

commit a4e3f6632ebe5dd1beba8c8ff2314b0f5dcd57a6
Author: SamyEZE <sami.boudemagh@gmail.com>
Date:   Wed Oct 4 10:53:45 2023 +0200

    ajoute des notes a oups.md

 2023-10-10 22:42:35 ⌚  Samy in /mnt/c/users/sami-/dricetnæ/PPE1-2023
± |brance-oups ✓| → git show a4e3f6632ebe5dd1beba8c8ff2314b0f5dcd57a6:oups.md
voici mes notes pour cet exo 


# journal de bord seance du 10/10 

Aujourd'hui, j'ai approfondi mes compétences en matière de manipulation de fichiers et d'analyse de données à partir de la ligne de commande. J'ai exploré et pratiqué l'utilisation de plusieurs commandes Unix/Linux essentielles :

cat : Cette commande m'a permis de lire le contenu de fichiers et de combiner plusieurs fichiers en une sortie unique.
grep : J'ai utilisé grep pour filtrer des informations spécifiques à partir de fichiers en recherchant des motifs ou des chaînes de caractères.
sort : Grâce à sort, j'ai appris à trier des données par ordre alphabétique ou numérique, ce qui est très utile pour organiser et analyser de grands ensembles de données.
wc : J'ai utilisé la commande wc avec l'option -l pour compter le nombre de lignes dans une sortie ou un fichier, ce qui est particulièrement utile pour estimer rapidement la taille des données.
de plus on a commance a faire des scripts je ne suis pas sur d'avoir tout suivi, je vais update mon journal de bord demain apres avoir fait les exercices pour commenter sur la partie des scripts 
