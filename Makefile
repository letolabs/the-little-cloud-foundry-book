pdf: en/cf.md
	bin/md2pdf

epub: en/cf.md
	pandoc -o en/cf.epub en/cf.md

mobi: en/cf.epub
	kindleGen en/cf.mobi
