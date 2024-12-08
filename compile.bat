xelatex -synctex=1 -interaction=nonstopmode --shell-escape -file-line-error NAC
zhmakeindex -s zh.ist NAC-NAC.idx
xelatex -synctex=1 -interaction=nonstopmode --shell-escape -file-line-error NAC
xelatex -synctex=1 -interaction=nonstopmode --shell-escape -file-line-error NAC
del *.aux *.bcf *.idx *.ind *.ilg *.run.xml *.synctex.gz *.toc *.log *.synctex