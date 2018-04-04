.PHONY: clean help
.DEFAULT_GOAL= help
CC=pdflatex

help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*4140)|(^##)'  | awk 'BEGIN {FS = :.*?## }; {printf 033[32m%-10s033[0m %sn, 41401, 41402}' | sed -e 's/\[32m##/[33m/'

pdf: main.tex ## build pdf output from the main file
	 main.tex
	mv main.pdf initdev_cc.pdf
clean: ## clean all build files
	@rm -f *.aux *.bak *.log *.out *.toc *.gz *.fls *.fdb_latexmk *.dvi *.nav *.snm *.vrb

show: ## show pdf
	evince initdev_cc.pdf
