module.exports =
  dist:
    devFile: "bower_components/modernizr/modernizr.js"
    outputFile: "dist/js/modernizr.kalatheme_sauce.min.js"
    extra:
      shiv: true
      printshiv: true
      load: true
      mq: true
      cssclasses: true

    tests: [
      # 'flexbox'
    ]
    # Based on default settings on http://modernizr.com/download/
    extensibility:
      addtest: false
      prefixed: false
      teststyles: false
      testprops: false
      testallprops: false
      hasevents: false
      prefixes: true
      domprefixes: true
