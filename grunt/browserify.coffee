bsa11y = 'bower_components/bootstrap-accessibility-plugin/plugins'
bsa11y += '/js/bootstrap-accessibility.js:bootstrap-accessibility'

module.exports =
  theme:
    files: 'dist/js/kalatheme_sauce.pkg.js' : [
      'coffee/index.coffee'
    ]
  test:
    files:
      'tests/tests.js':'tests/testindex.coffee'
