monday-slides
=============

Generate HTML presentation slides from Markdown source.

## Dependencies

* [Pandoc](https://github.com/jgm/pandoc/releases) 1.15.0.6
* [reveal.js](https://github.com/hakimel/reveal.js) 3.1.0
* [GO](https://golang.org/dl/) to compile codeblocks includes filter
* Some extra tooling:

~~~
go get github.com/ffel/pandocfilter/cmd/includes
go get github.com/tischda/chkimg
go get github.com/tischda/mkdoc
~~~

### Compile slides

To compile slides, run `mkdoc`

~~~
$ mkdoc
Running pandoc with options: [--from=markdown+yaml_metadata_block --template template/reveal.template
    --no-highlight --variable transition=slide --variable css=css/hacking.css --filter includes.exe
    -t revealjs -o monday-slides.html 01-slides.md metadata.yaml]
Total time: 88.0908ms
~~~

### Local slides

To use `reveal.js` locally:

~~~
wget https://github.com/hakimel/reveal.js/archive/3.1.0.zip -O reveal.js-3.1.0.zip
unzip reveal.js-3.1.0.zip
ln -s reveal.js-3.1.0 reveal.js
~~~

Windows:

~~~
mklink /d reveal.js reveal.js-3.1.0
~~~

In the build script, remove the `--variable revealjs-url=https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.1.0`
option. To produce self-contained slides, add the `--self-contained` option.

### Slide options

Edit the `pandoc.options` file.

#### Themes

`-V theme=moon`

See `reveal.js/css/theme/` for more themes.

#### Code highlighting

`--template template/reveal.template --no-highlight`

#### Transitions

`--variable transition=linear`

one of: `none|fade|slide|convex|concave|zoom`

#### Keyboard shortcuts

`ESC` : table of contents
`SPACE`: next slide,
`SHIFT+SPACE`: previous slide

`ALT+Click`: zoom

`B` : break

`S` : speaker notes


Pandoc filters
--------------

To highlight code blocks, we use a pandoc filter written in [Go](https://www.golang.org) based on
this library: https://github.com/ffel/pandocfilter (it is downloaded and compiled by `go get`).

The filter parses CodeBlock includes written like this in the Markdown source:

    ~~~ {.go include="code/ping.go" }
    any text here will be replaced...
    ~~~


Known issues
------------
* Slide titles must not contain accents (dots ok, fixed in 3.1.0).
* When switching to overview mode with ESC, the page number moves to the background
* Files included as code blocks must have UNIX line endings.


References
----------

* http://johnmacfarlane.net/pandoc/demo/example9/producing-slide-shows-with-pandoc
* http://homes.esat.kuleuven.be/~bioiuser/blog/reveal-js-presentation-from-markdown-with-syntax-highlighting/
* https://github.com/hakimel/reveal.js/issues/1052
