all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "Date et heure de génération : $$(date)" >> README.md
	echo "Nombre de lignes dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md
