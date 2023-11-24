MAINFILE=clean_work

PHONY: all
all:$(MAINFILE).pdf


$(MAINFILE).pdf:
	pdflatex $(MAINFILE)
	pdflatex $(MAINFILE)

PHONY: clean
clean:
	-rm -f *.aux
	-rm -f *.log
	-rm -f *.toc
	-rm -f *.bbl
	-rm -f *.blg
	-rm -f *.out
	-rm -f make/bib

.PHONY: cleanall
cleanall: clean
	-rm -f *.pdf
	-rm -f *.ps
	-rm -f *.dvi
	-rm -rf ./make

