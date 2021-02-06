all:
	pdflatex pseudorandomness.tex

clean:
	rm -f *.aux *.log *.toc *.scr *.bcf *.blg

distclean:clean
	rm -f *.bbl *.blg main.pdf

bib:
	pdflatex pseudorandomness.tex
	bibtex pseudorandomness
	pdflatex pseudorandomness.tex
	pdflatex pseudorandomness.tex
