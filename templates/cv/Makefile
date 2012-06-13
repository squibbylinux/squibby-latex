all: cv.pdf

.SUFFIXES: .tex .pdf

.tex.pdf:
	xelatex $<

clean:
	@rm -f *.log *.out *.aux

distclean: clean
	@rm -f *.pdf
