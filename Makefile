# Makefile to create a pdf from LaTeX source
# Ben Moss <benm@mit.edu>

TARGET = main

pdf:		bib date
		pdflatex $(TARGET).tex

date:		
		date > date.txt


bib:		latex
		bibtex $(TARGET)

latex:
		pdflatex $(TARGET).tex


.PHONY :	release
release:
		-rm $(TARGET).aux $(TARGET).bbl $(TARGET).blg $(TARGET).log 

.PHONY :	clean
clean:
		-rm $(TARGET).aux $(TARGET).bbl $(TARGET).blg $(TARGET).log  $(TARGET).pdf date.txt
