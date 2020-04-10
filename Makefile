MAKEFILE=Makefile
PHONY: benzinho

help:
	@echo "\t-Here is the list of available targets:"
	@perl -ne 'print if(/^\w+\:/)' Makefile | perl -npe 's/^/\t\t- /; s/\:.*//' 

realbookchord/realbookchords.sty:
	@rm -rf realbookchords
	@git clone https://github.com/cgnieder/realbookchords.git

pdf: realbookchord/realbookchords.sty
	@cd grids; \
	cp ../realbookchords/realbookchords.sty . ; \
	xelatex choro_grids.tex; echo "Plz open $$PWD/choro_grids.pdf"
