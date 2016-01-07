# Italic small caps in Times Roman for LaTeX

Standard LaTeX does not provide italic small caps. For example,
```
\documentclass{article}
\usepackage{times}
\begin{document}
\textsc{Hello \emph{world}}

\textsc{Hello \emph{\textbf{world}}}
\end{document}
```
produces:

![Hello World italic but not small caps](img/hello-world-times.png)

The times-itsc package provided here fixes this, to give:

![Hello World italic small caps](img/hello-world-times-itsc.png)

## To use the package

1. Unpack [this tar.gz file](times-itsc.tar.gz) in your texmf hierarchy.
2. Run `mktexlsr` or `texhash`.
3. Then use the `times-itsc` package in place of the times package.

## To generate the files

The files are generated using fontinst; to generate the files:
1. Clone this git repository.
2. Type `make`.
3. If this doesn't work, make sure you have `ptmr8a.afm` is part of
   your TeX distribution. On Debian or Ubuntu, installing the
   `texlive-fonts-recommended` should provide this.

## Acknowledgements

Thanks to:
* [Daniel Ashbrook](https://wiki.cc.gatech.edu/ccg/people/dan)
for helpful comments on an earlier version of the package.
* [jjulino](https://github.com/jjulino) for implement bold italic
  small caps.

<!--  LocalWords:  LaTeX documentclass usepackage textsc emph img gz
 -->
<!--  LocalWords:  itsc texmf mktexlsr texhash fontinst ptmr afm tex
 -->
<!--  LocalWords:  Debian Ubuntu texlive Ashbrook textbf jjulino
 -->
