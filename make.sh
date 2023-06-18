#!/bin/bash

src_dir="src"
bin_dir="bin"

# CVs
del_cv="cv_del.tex"
dub_cv="cv.tex"

# Cover Letters
del_cl="cl.tex"

cd $src_dir
pdflatex $del_cv 
pdflatex $dub_cv
pdflatex $del_cl

mv *.pdf ../$bin_dir

clear
echo "CVs and CLs in bin!"
