async = require 'async'
React = require 'react'

$ = window.jQuery = require 'jquery'
require 'script!../dist/bower_components/foundation/js/foundation.min.js'

div = React.DOM.div
top = require './jsx/top.coffee'

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

$(document).foundation()

React.renderComponent (
  div null,
  ( top null )
), document.getElementById('react-root')

