#!/bin/sh

tex faked-si.tex

for f in *.pl;  do pltotf $f; done
for f in *.vpl; do vptovf $f; done

mkdir -p fonts/vf
mkdir -p fonts/tfm
mkdir -p tex/latex/times-itsc

cp ptmscri*.vf fonts/vf
cp ptmscri*.tfm fonts/tfm
cp ptmscbi*.vf fonts/vf
cp ptmscbi*.tfm fonts/tfm
cp times-itsc.sty times-itsc.tex *.fd tex/latex/times-itsc

tar cvzf times-itsc.tar.gz fonts tex
