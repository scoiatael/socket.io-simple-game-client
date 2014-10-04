$ = require 'jquery'
async = require 'async'
React = require 'react'

h1 = React.DOM.h1
div = React.DOM.div
a = React.DOM.a
ul = React.DOM.ul
li = React.DOM.li

getScript = (script, cb) ->
  console.log "Trying to get #{script}"
  $.getScript script, ->
    console.log "Loaded script #{script}"
    cb null

async.eachSeries [
  '/bower_components/foundation/js/foundation.min.js'
  #  '/socket.io/socket.io.js/'
], getScript, (err) ->
  if err
    console.error err

  React.renderComponent (
    div { className:'row' }, [
      ( div { key:1, className:'large-6 columns' }, ( h1 {}, 'Welcome' ) )
      ( div { key:2, className:'large-6 columns' }, ( ul { className: 'button-group right' },
        ( li {key:v}, ( a { className:'button', href:'#'}, "Test #{v}") ) for v in [0..3]) )
    ]
  ), document.getElementById('react-root')

