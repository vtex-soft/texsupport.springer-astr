temp := astr-project-template

zip:
	mkdir -p $(temp)
	mkdir -p $(temp)/doc
	cp ./doc/shortguide.pdf $(temp)/doc
	cp LICENSE README.org $(temp)
	cp -r template $(temp)
	cp -r example $(temp)
	cp -r sty/ $(temp)/template
	cp -r sty/ $(temp)/example
	cp bst/* $(temp)/example/bib/
	mkdir -p $(temp)/template/bib/
	cp bst/* $(temp)/template/bib/
	ruby -pi.bak -e "gsub(/\{\.\.\/sty\/\}/, '{sty/}')" -e "gsub(/{\.\.\/bst/, '{bib')" $(temp)/template/template.tex $(temp)/example/sample.tex
	rm -rf $(temp)/template/*.bak
	rm -rf $(temp)/example/*.bak
	zip -r $(temp).zip $(temp)/
	rm -rf $(temp)/
	mv $(temp).zip release/

push-to-github:
	git push -u github master

