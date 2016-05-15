require 'stylus'
require 'autoprefixer-rails'

puts 'Compiling...'

compiled = Stylus.compile File.read 'source/woof.styl'
prefixed = AutoprefixerRails.process compiled
css = prefixed.css.gsub("'", '"').delete("\n")

js = File.read 'source/woof.js'

woof = "
// ==UserScript==
// @name         Woof!
// @namespace    https://github.com/nanalan/woof
// @version      0.1
// @description  A beautiful Scratch theme.
// @author       nanalan
// @match        https://scratch.mit.edu/*
// @grant        none
// @require      https://code.jquery.com/jquery-1.12.0.min.js
// ==/UserScript==

/* jshint ignore:start */
window.addEventListener('load', function() {
  'use strict';
  const css = '#{css}';
  #{js}
}, false);
/* jshint ignore:end */
"

File.write 'release/woof.user.js', woof

puts '...done!'