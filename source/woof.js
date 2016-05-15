document.head.innerHTML += '<!-- Woof! -->\n<style id="woof">' + css + '</style>'

if(window.jQuery) document.body.classList.add('woof')
else document.body.classList.add('woof-new')