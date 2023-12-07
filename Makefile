FILES=coop.tex macros.sty

build: coop.pdf

coop.pdf: $(FILES)
	latexmk --shell-escape -interaction=nonstopmode -pdf coop.tex

clean:
	latexmk -c
	rm *.pdf

etags:
	etags *.tex -o - | fgrep -v \\ref\{ > tags

.PHONY: build clean
