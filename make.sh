#!/bin/bash

src_dir="src"
bin_dir="bin"
del_cv="cv_del.tex"
dub_cv="cv.tex"

cd $src_dir
pdflatex $del_cv 
pdflatex $dub_cv 

mv *.pdf ../$bin_dir

clear
echo "CVs in bin!"
