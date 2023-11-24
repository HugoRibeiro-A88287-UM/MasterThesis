CC_LATEX = xelatex
CC_BIBTEX = bibtex
PDF_VIEW = xdg-open
TEX_NAME = main
PDF_NAME = Thesis_HugoRibeiro

.PHONY: all
all: main bibtex main open

main:
	-$(CC_LATEX) -jobname=$(PDF_NAME) $(TEX_NAME).tex

bibtex: 
	-$(CC_BIBTEX) $(PDF_NAME)

open: 
	-$(PDF_VIEW) $(PDF_NAME).pdf

.PHONY: clean
clean:
	rm -f $(PDF_NAME).pdf