#!/bin/bash
# -----------------------------------------------------------------------------
# This script transforms Markdown files into reveal.js slides
# -----------------------------------------------------------------------------

# OPTIONS="--template template/reveal.template --no-highlight --variable transition=slide --variable css=css/hacking.css --self-contained"
OPTIONS="--template template/reveal.template --no-highlight --variable transition=slide --variable css=css/hacking.css --variable revealjs-url=https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.1.0"
GLOBIGNORE="README.md"

for f in *.md
do
  pandoc --filter includes/includes -t revealjs ${f%%.*}.md -o ${f%%.*}.html ${OPTIONS}
done
