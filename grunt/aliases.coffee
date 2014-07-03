module.exports =
  default: [
      "clean:dist"
      "browserify:theme"
      'test'
      "concurrent:uglifyModernizrCompass"
      "imagemin:dist"
      "autoprefixer:dist"
      "cssmin:dist"
      ]
  a11y: [
    "clean:sample"
    "htmlSnapshot:sample"
    "accessibility:sample"
    ]
  styleguide: [
    'default'
    'copy:styleguide'
    'jekyll:styleguide'
  ]
  styleguideserver: [
    'connect:styleguide'
  ]
  package: [
    'default'
    'compress:archive'
  ]
  test: [
    'browserify:test'
    'jasmine:themejs'
  ]
