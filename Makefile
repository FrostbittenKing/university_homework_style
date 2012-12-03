all : document

document : simpleExample.tex
	pdflatex simpleExample.tex

clean :
	rm -rf *.toc *.log *.aux *.out *.dvi *.pdf *~
