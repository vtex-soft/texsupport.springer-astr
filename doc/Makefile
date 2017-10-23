export TEXINPUTS:=../sty/;

default: shortguide.pdf 

%.pdf: %.tex .FORCE
	pdflatex -recorder $<

clean:
	rm -rf *.aux *.fls *.log

.FORCE:


