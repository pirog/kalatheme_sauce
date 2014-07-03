module.exports =
  styleguide:
    files:[
      {
        expand: true
        src: 'dist/**/*'
        dest: 'docs'
      }
    ]
  bower:
    expand: true
    flatten: true
    cwd: 'bower_components'
    src: [
      'html5-placeholder-polyfill/dist/placeholder_polyfill.jquery.min.combo.js'
      'respondJS/dest/respond.min.js'
      # 'flexie/dist/flexie.min.js'
    ]
    dest: 'dist/js/vendor'
