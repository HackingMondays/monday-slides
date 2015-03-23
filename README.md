reveal.js - slides
==================

Generate HTML presentation slides from Markdown source.

Prepare
-------

1. Install Pandoc
2. Download `reveal.js`:
~~~
wget https://github.com/hakimel/reveal.js/archive/3.0.0.zip -O reveal.js-3.0.0.zip
unzip reveal.js-3.0.0.zip
ln -s reveal.js-3.0.0 reveal.js
~~~


Quickstart
----------
1. Rename & edit `sample-slides.md`
2. Run `build.sh`

The script will generate one HTML slideshow for each `.md` file.


Compile
-------

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


References
----------

* http://johnmacfarlane.net/pandoc/demo/example9/producing-slide-shows-with-pandoc
* http://homes.esat.kuleuven.be/~bioiuser/blog/reveal-js-presentation-from-markdown-with-syntax-highlighting/
* https://github.com/hakimel/reveal.js/issues/1052
