module.exports =
  options:
    bundleExec: true
    config: '_config.yml'
  styleguide:
    options:
      config: '_config.yml,_config_styleguide.yml'
      dest: 'styleguide'
  ghpages:
    options:
      dest: '_gh_pages'
  server:
    options:
      dest: '.temp'
      raw: 'baseurl: ""'
