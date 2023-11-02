CC_LATEX = xelatex
CC_BIBTEX = bibtex
PDF_VIEW = xdg-open
NAME = main

.PHONY: all
all: main bibtex main open

main:
	-$(CC_LATEX) $(NAME).tex

bibtex: 
	-$(CC_BIBTEX) main

open: 
	-$(PDF_VIEW) $(NAME).pdf

.PHONY: clean
clean:
	rm -f $(NAME).pdf