INSTALL_DIR = ~/texmf/tex/latex

all : document

document : simpleExample.tex 
	pdflatex simpleExample.tex
	# bibtex simpleExample
	# pdflatex simpleExample.tex
	pdflatex simpleExample.tex
clean :
	rm -rf *.toc *.log *.aux *.out *.dvi *.pdf *~ *.bbl *.blg



install :	
	if  ! (test -d $(INSTALL_DIR)/university_homework_style);\
	then 		mkdir -p ~/texmf/tex/latex;\
			cp -r $(shell pwd) ~/texmf/tex/latex;\
			texhash ~/texmf;\
	fi
