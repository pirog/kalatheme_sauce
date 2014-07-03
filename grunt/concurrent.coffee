module.exports =
  uglifyModernizrCompass:
    tasks: [
      "uglify:themeJS"
      "modernizr"
      "compass:dist"
      "copy:bower"
    ]
