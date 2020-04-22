#!/usr/bin/env bash

# -name "*.tex"
for texfile in `ls -1|grep tex$`
do
    echo "Convert: ${texfile} to PDF"
    fbasename=${texfile%.*}
    rm -f ${fbasename}.pdf

    pdflatex ${texfile} > /dev/null

#   rm -f ${fbasename}.out
#   rm -f ${fbasename}.log
#   rm -f ${fbasename}.aux  
#   rm -f ${fbasename}.toc

done
