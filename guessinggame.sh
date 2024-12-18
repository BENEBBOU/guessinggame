#!/usr/bin/env bash
# Ce script demande à l'utilisateur de deviner le nombre de fichiers dans le répertoire courant

function ask {
    echo "Combien de fichiers se trouvent dans le répertoire courant ?"
}

correct_number=$(ls -1 | wc -l)
guess=-1

ask

while [[ $guess -ne $correct_number ]]
do
    read guess
    if [[ $guess -lt $correct_number ]]
    then
        echo "Trop bas, essayez encore :"
    elif [[ $guess -gt $correct_number ]]
    then
        echo "Trop haut, essayez encore :"
    else
        echo "Bravo, c'est la bonne réponse !"
    fi
done
