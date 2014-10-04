async = require 'async'
React = require 'react'

$ = window.jQuery = require 'jquery'
require 'script!../dist/bower_components/foundation/js/foundation.min.js'

h1 = React.DOM.h1
div = React.DOM.div
a = React.DOM.a
ul = React.DOM.ul
li = React.DOM.li

top = require './jsx/top.coffee'
offmenu = require './jsx/offmenu.coffee'

getScript = (script, cb) ->
  $.getScript(script, ->
    cb null
  ).fail (jqxhr, settings, err) ->
    cb err

async.eachSeries [
  '/socket.io/socket.io.js/'
], getScript, (err) ->
  if err
    console.error err
  else
    console.log "All scripts loaded."

React.renderComponent (
  div null,
  ( top null ),
  ( offmenu null )
), document.getElementById('react-root')

