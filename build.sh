#!/bin/bash

OPTIONS="--template template/reveal.template --no-highlight --variable transition=slide --variable css=css/hacking.css"
GLOBIGNORE="README.md"

for f in *.md
do
  pandoc -t revealjs -s ${f%%.*}.md -o ${f%%.*}.html ${OPTIONS}
done
