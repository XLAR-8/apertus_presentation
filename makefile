DEST_DIR :=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
SRC_DIR = themes/beamercolorthemeapertus.sty themes/beamerfontthemeapertus.sty themes/beamerinnerthemeapertus.sty themes/beamerthemeapertus.sty

all:	axiom_presentation.pdf

axiom_presentation.pdf: 
	cp -f $(SRC_DIR) $(DEST_DIR)
	rubber -d axiom_presentation.tex

clean:
	rm -r beamer* axiom_presentation.pdf axiom_presentation.aux axiom_presentation.log axiom_presentation.nav axiom_presentation.out axiom_presentation.snm axiom_presentation.toc


			
