.PHONY: main clean FORCE

main: poster.pdf

poster.pdf: FORCE
	latexmk -pdflatex='texfot lualatex --shell-escape -interaction nonstopmode' -pdf -bibtex poster.tex

clean:
	latexmk -pdf -C
