
%.html: %.md
	pandoc --toc -s --self-contained --section-divs -o $@ $<
