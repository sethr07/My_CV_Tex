#!/bin/bash

src_dir="src"
bin_dir="bin"

# CVs
cv="cv.tex"

# Cover Letters
del_cl="cl.tex"

cd $src_dir
pdflatex $cv 
pdflatex $del_cl

mv *.pdf ../$bin_dir

clear
echo "CVs and CLs in bin!"
