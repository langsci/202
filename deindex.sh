#! /bin/bash

## bash script to remove the indexing commands
## (so that indexing can be ran twice)

cd chapters/
for i in $(ls *.tex)
do
    mv "$i" "${i%%.tex}.old"
    echo "${i%%.tex}.old"
    cat "${i%%.tex}.old" | sed -e 's/\\isi{\([^}]*\)}/\1/g' | sed -e 's/\\ili{\([^}]*\)}/\1/g' > "$i"
done
