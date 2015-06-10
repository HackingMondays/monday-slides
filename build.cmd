::-----------------------------------------------------------------------------
:: This script transforms Markdown files into reveal.js slides
::-----------------------------------------------------------------------------
@echo off
setlocal
REM set OPTIONS=--template template/reveal.template --no-highlight --variable transition=slide --variable css=css/hacking.css --self-contained
set OPTIONS=--template template/reveal.template --no-highlight --variable transition=slide --variable css=css/hacking.css --variable revealjs-url=https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.1.0

for %%f in (*.md) do (
    if /I NOT "%%f"=="README.md" (
        pandoc --filter includes/includes.exe -t revealjs %%~nf.md -o %%~nf.html %OPTIONS%
    )
)

endlocal
