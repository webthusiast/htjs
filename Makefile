prepublish: index.js demo.browserified.js

%.js: %.coffee
	coffee -cs <$< >$@

demo.browserified.js: $(shell browserify --list demo.js)
	browserify demo.js >$@
