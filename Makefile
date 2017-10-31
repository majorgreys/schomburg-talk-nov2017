all : talk

talk :
	# pandoc --latex-engine=xelatex -t beamer talk.md -o talk.pdf
	pandoc speaking.md -o speaking.html
	pandoc --latex-engine=xelatex speaking.md -o speaking.pdf

clean :
	rm -rf speaking.pdf
