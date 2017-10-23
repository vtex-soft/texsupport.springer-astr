export TEXINPUTS:=../sty/;

default: sample.pdf 

%.pdf: %.tex .FORCE
	pdflatex -recorder $<
	bibtex $*

clean:
	rm -rf *.aux *.fls *.log *.bbl *.blg

.FORCE:


