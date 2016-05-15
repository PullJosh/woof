$('head').append('<!-- Woof! --><style id="woof">' + css + '</style>')
$('head').append("<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,300,600' rel='stylesheet' type='text/css'>")

const isNew = $('[data-reactid]').length > 0
console.log('New Scratch?', isNew)

let page = isNew ? $('.page') : $('body')
let nav = isNew ? $('#navigation') : $('#topnav')

//nav.remove()