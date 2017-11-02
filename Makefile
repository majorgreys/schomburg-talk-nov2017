all : talk

talk :
	# pandoc --latex-engine=xelatex -t beamer talk.md -o talk.pdf
	pandoc speaking.md -Ss -o speaking.html
	pandoc --latex-engine=xelatex -V linestretch=1.25 -V papersize=letter -V geometry:margin=3cm -V documentclass:scrartcl -V fontsize:12pt speaking.md -o speaking.pdf

clean :
	rm -rf speaking.pdf
