module.exports =
  options:
    browsers: [
      '> 1%'
      'last 2 versions'
      'Firefox ESR'
      'Opera 12.1'
      'ie 7'
      'ie 8'
      'ie 9'
      'ie 10'
      'ie 11'
    ]
    map: true
  dist:
    cwd: "dist/css/"
    src: [
      '*.css'
      '!*.min.css'
    ]
    dest: "dist/css/"
    expand: true
    flatten: true
