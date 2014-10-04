React = require 'react'
div = React.DOM.div
a = React.DOM.a
aside = React.DOM.aside
p = React.DOM.p
ul = React.DOM.ul
li = React.DOM.li

fillerText = "Set in the year 0 F.E. (\"Foundation Era\"), The Psychohistorians opens on Trantor, the capital of the 12,000-year-old Galactic Empire. Though the empire appears stable and powerful, it is slowly decaying in ways that parallel the decline of the Western Roman Empire. Hari Seldon, a mathematician and psychologist, has developed psychohistory, a new field of science and psychology that equates all possibilities in large societies to mathematics, allowing for the prediction of future events."

module.exports = React.createClass
  runFoundation: ->
    #@getDOMNode().foundation()
  componentDidUpdate: @runFoundation
  componentDidMount: @runFoundation
  render: ->
    div(
      className: "off-canvas-wrap"
      "data-offcanvas": true
      , div(
        className: "inner-wrap"
        , a(
          className: "left-off-canvas-toggle"
          href: "#"
          , "Menu")
        , aside(
          className: "left-off-canvas-menu"
          , ul(
            {}
            , li(
              {}
              , a(
                href: "#"
                , "Item 1"))
            , " ..."))
        , p(
          {}
          , fillerText)
        , a(
          className: "exit-off-canvas")
        , " ")
      , " ")
