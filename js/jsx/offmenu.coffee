React = require 'react'

module.exports = React.createClass
  runFoundation: ->
    @getDOMNode().foundation()
  componentDidUpdate: @runFoundation
  componentDidMount: @runFoundation
  render: ->
    React.DOM.div
      className: "off-canvas-wrap"
      "data-offcanvas": true
    , React.DOM.div(
      className: "inner-wrap"
    , React.DOM.a(
      className: "left-off-canvas-toggle"
      href: "#"
    , "Menu"), React.DOM.aside(
      className: "left-off-canvas-menu"
    , React.DOM.ul(null, React.DOM.li(null, React.DOM.a(
      href: "#"
    , "Item 1")), " ...")), React.DOM.p(null, "Set in the year 0 F.E. (\"Foundation Era\"), The Psychohistorians opens on Trantor, the capital of the 12,000-year-old Galactic Empire. Though the empire appears stable and powerful, it is slowly decaying in ways that parallel the decline of the Western Roman Empire. Hari Seldon, a mathematician and psychologist, has developed psychohistory, a new field of science and psychology that equates all possibilities in large societies to mathematics, allowing for the prediction of future events."),
    React.DOM.a(className: "exit-off-canvas"), " "), " "
