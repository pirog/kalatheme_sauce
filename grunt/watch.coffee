module.exports =
  grunt:
    files: [
      "Gruntfile.coffee"
      "grunt/**/*"
    ]
    tasks: ["coffeelint:grunt"]


  sass:
    files: "scss/**/*.scss"
    tasks: [
      "compass:devel"
      # "autoprefixer"
      "cssmin"
    ]
  appCoffee:
    files: "coffee/**/*.coffee"
    tasks: [
      "coffeelint:appCoffee"
      "browserify:theme"
      "uglify:themeJS"
      'test'
    ]
  liveReload:
    tasks: [
      'copy:styleguide'
    ]
    files: "dist/**/*"
    options:
      livereload: true
  styleguideserver:
    files: 'docs/**/*'
    tasks: 'jekyll:server'
  test:
    files: [
      'tests/specs/*.{coffee,js}'
      'tests/testindex.coffee'
    ]
    tasks: [
      'test'
    ]
