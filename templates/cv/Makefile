all: moderncv.pdf europecv.pdf

.pdf.tex:
	xelatex $<

clean:
	@rm -f *.log *.out *.aux

distclean: clean
	@rm -f *.pdf
