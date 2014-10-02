$ = require 'jquery'
React = require 'react'
h1 = React.DOM.h1
div = React.DOM.div
a = React.DOM.a
ul = React.DOM.ul
li = React.DOM.li

$.getScript '/socket.io/socket.io.js/', ->
  console.log "IO is #{JSON.stringify io}"

  React.renderComponent (
    div { className:'row' }, [
      ( div { key:1, className:'large-6 columns' }, ( h1 {}, 'Welcome' ) ),
      ( div { key:2, className:'large-6 columns' }, ( ul { className: 'button-group right' },
        ( li {key:v}, ( a { className:'button', href:'#'}, "Test #{v}") ) for v in [0..3]) )
    ]
  ), document.getElementById('react-root')

