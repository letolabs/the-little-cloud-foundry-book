all: pdf epub

view: pdf
	evince cf.pdf

pandoc:
	cabal update
	cabal install cabal-install # get the latest cabal
	cabal install json-0.4.4    # get around dependency conflicts
	cabal install pandoc        # install cabal
	
pdf: en/cf.md
	bin/md2pdf

epub: en/cf.md
	pandoc -o en/cf.epub en/cf.md

mobi: en/cf.epub
	kindleGen en/cf.mobi


