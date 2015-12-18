
default:
	ln -s -f `kpsewhich ptmr8a.afm` .
	ln -s -f `kpsewhich ptmri8a.afm` .
	tex faked-si.tex
	for f in *.pl;  do pltotf $$f; done
	for f in *.vpl; do vptovf $$f; done
	mkdir -p fonts/vf/times-itsc
	mkdir -p fonts/tfm/times-itsc
	mkdir -p tex/latex/times-itsc
	cp ptmscr*.vf fonts/vf/times-itsc
	cp ptmscr*.tfm fonts/tfm/times-itsc
	cp times-itsc.sty times-itsc.tex *.fd tex/latex/times-itsc
	tar cvzf times-itsc.tar.gz fonts tex

clean:
	rm -Rf *.log *.fd *.mtx *.pl *.vpl *.tfm *.vf *.aux *.dvi *.afm fonts tex
	cd test; rm -f *.log *.dvi *.pdf *.aux

distclean: clean
	rm -f times-itsc.tar.gz
