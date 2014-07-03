module.exports = (themePath)->
  Modernizr = require('modernizr')
  Modernizr.load(
    test: Modernizr.mq('only all')
    nope:
      "#{themePath}/dist/js/vendor/respond.min.js"
  )
  Modernizr.load(
    test: Modernizr.input.placeholder
    nope:
      "#{themePath}/
      dist/js/vendor/placeholder_polyfill.jquery.min.combo.js"
  )
