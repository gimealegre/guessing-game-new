all: README.md

README.md: guessinggamenew.sh
	echo "## Unix Workbench Guessing Game" > README.md
	echo "- **Make was run at:**" >> README.md
	date >> README.md
	echo "- **guessingdame.sh has the following number of lines:**" >> README.md
	wc -l < ./guessinggamenew.sh >> README.MD

