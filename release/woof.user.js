
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
  const css = 'body {  background: #fcfcfc;  color: #212121;  font-family: Helvetica Neue, Open Sans, Helvetica, Arial, sans-serif;}';
  $('head').append('<!-- Woof! --><style id="woof">' + css + '</style>')
$('head').append("<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,300,600' rel='stylesheet' type='text/css'>")

const isNew = $('[data-reactid]').length > 0
console.log('New Scratch?', isNew)

let page = isNew ? $('.page') : $('body')
let nav = isNew ? $('#navigation') : $('#topnav')

//nav.remove()
}, false);
/* jshint ignore:end */
