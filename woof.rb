require 'stylus'
require 'autoprefixer-rails'

puts 'Compiling...'

compiled = Stylus.compile File.read 'source/woof.styl'
prefixed = AutoprefixerRails.process compiled
css = prefixed.css.gsub("'", '"').delete("\n")

js = File.read 'source/woof.js'

woof = "// ==UserScript==
// @name         Woof!
// @namespace    https://github.com/nanalan/woof
// @version      0.4
// @description  A modern Scratch theme.
// @author       nanalan
// @match        https://scratch.mit.edu/*
// @exclude      https://scratch.mit.edu/accounts/*
// @exclude      https://scratch.mit.edu/site-api/*
// @grant        none
// @downloadURL  https://github.com/nanalan/woof/raw/master/release/woof.user.js
// @updateURL    https://github.com/nanalan/woof/raw/master/release/woof.user.js
// ==/UserScript==

/* jshint ignore:start */
(function() {
  'use strict';
  const css = '#{css}';
  #{js}
})();
/* jshint ignore:end */
"

File.write 'release/woof.user.js', woof

puts '...done!'