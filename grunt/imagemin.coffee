module.exports =
  dist:
    options:
      progressive: false
    files: [
      {
        expand: true
        cwd: 'img-src'
        src: ['*']
        dest: 'dist/img/'
      }
    ]
