module.exports =
  dist:
    expand: true
    cwd: "dist/css/"
    src: [
      "*.css"
      "!*.min.css"
    ]
    dest: "dist/css/"
    ext: ".min.css"
    options:
      keepSpecialComments: '*'
      banner: '<%= banner %>'
