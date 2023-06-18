#!/bin/bash

src_dir="src"
bin_dir="bin"

# CVs
dub_cv="cv.tex"

# Cover Letters
dub_cl="cl.tex"

cd $src_dir
pdflatex $dub_cv
pdflatex $dub_cl

mv *.pdf ../$bin_dir

clear
echo "CVs and CLs in bin!"
