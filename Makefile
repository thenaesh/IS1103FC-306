ALL: persistent clean

persistent:
	pdflatex fomo.tex
	pdflatex fomo.tex
	bibtex   fomo
	pdflatex fomo.tex
	pdflatex fomo.tex


deepclean: clean qclean
clean:
	rm *.log *.aux *.bbl *.blg *.toc
qclean:
	rm *.pdf