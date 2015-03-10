#!/bin/sh

pandoc -t revealjs -s habits.md -o habits.html --template reveal-template.html --no-highlight --variable transition=slide --variable css=css/fix-titles.css

