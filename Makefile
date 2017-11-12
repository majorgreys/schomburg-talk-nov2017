all : talk

talk :
	pandoc --pdf-engine=xelatex -V linestretch=1.25 -V papersize=letter -V geometry:margin=3cm -V documentclass:scrartcl -V fontsize:12pt speaking.md -o speaking.pdf
	pandoc -V theme:metropolis -t beamer slides.md -o slides.pdf

clean :
	rm -rf speaking.pdf
	rm -rf slides.pdf
