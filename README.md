reveal.js - slides
==================

Generate HTML presentation slides from Markdown source.

Dependencies
------------

* Pandoc
* `reveal.js`:


Quickstart
----------
1. Edit `sample-slides.md`
2. Run `build.sh`

The script will generate one HTML slideshow for each `.md` file.


Compile slides
--------------

To produce slides:
~~~
pandoc -t revealjs -s habits.md -o habits.html
~~~

Standalone HTML:
~~~
pandoc -t revealjs -s --self-contained habits.md -o habits.html
~~~


Themes
------

`-V theme=moon`

See `reveal.js/css/theme/` for more themes.


Code highlighting
-----------------

`--template template/reveal.template --no-highlight`


Transitions
-----------
`--variable transition=linear`

one of: `none|fade|slide|convex|concave|zoom`


Keyboard shortcuts
------------------

`SPACE`: next slide,
`SHIFT+SPACE`: previous slide

`ALT+Click`: zoom

`B` : break

`S` : speaker notes


Pandoc filters
--------------

The `includes` directory contains our CodeBlock includes filter written in GO.
It is based on this library: https://github.com/ffel/pandocfilter (it will be
downloaded when you run `go get`).

To compile, enter `includes` and run:

~~~
go get
go build
~~~

The generated binary is called by the `build.{sh|cmd}` script. It parses
CodeBlock includes written like this in the Markdown source:


    ~~~ {.go include="code/ping.go" }
    any text here will be replaced...
    ~~~

Local slides
------------

You can use `reveal.js` locally:

~~~
wget https://github.com/hakimel/reveal.js/archive/3.1.0.zip -O reveal.js-3.1.0.zip
unzip reveal.js-3.1.0.zip
ln -s reveal.js-3.1.0 reveal.js
~~~

In the build script, remove the `--variable revealjs-url=http://cdn.jsdelivr.net/reveal.js/3.0.0`
option. To produce self-contained slides, add the `--self-contained` option.


Known issues
------------
Slide titles must not contain accents (dots ok, fixed in 3.1.0).


References
----------

* http://johnmacfarlane.net/pandoc/demo/example9/producing-slide-shows-with-pandoc
* http://homes.esat.kuleuven.be/~bioiuser/blog/reveal-js-presentation-from-markdown-with-syntax-highlighting/
* https://github.com/hakimel/reveal.js/issues/1052
