kalatheme_sauce Subtheme
==================

## Compiling CSS and JavaScript

kalatheme_sauce uses [Grunt](http://gruntjs.com/) with convenient methods for working with the framework. It's how we compile our code, run tests, and more. To use it, install the required dependencies as directed and then run some Grunt commands.

### Install Grunt

From the command line:

1. Install `grunt-cli` globally with `npm install -g grunt-cli`.
2. Navigate to the root `/kalatheme_sauce` directory, then run `npm install`. npm will look at package.json and automatically install the necessary local dependencies listed there.

When completed, you'll be able to run the various Grunt commands provided from the command line.

**Unfamiliar with npm? Don't have node installed?** That's a-okay. npm stands for [node packaged modules](http://npmjs.org/) and is a way to manage development dependencies through node.js. [Download and install node.js](http://nodejs.org/download/) before proceeding.

### Install Bower

1. `npm install -g bower`
2. From the project directory `bower install`


### Install Bundler for Ruby Dependencies

1. `$ gem install bundler` will install [bundler](http://bundler.io/)
2. `$ bundle` will install the rest of the gems needed.


---
### Getting started

- Node JS needs to be installed
- `$ npm install -g bower grunt-cli`
- `$ npm install` install local npm modules
- `$ bower install` installs bower frontend packages
- Make sure ruby is available
- `$ gem install bundler` adds bundler for gemset management
- `$ bundle` installs and updates the bundle for this theme.
- build the assets `$ grunt` runs the default task
- `$ grunt watch` will watch for changes and recompile on change.

### Tasks

The theme uses Grunt to perform repative tasks involved in building the theme and the theme assets. Each task is configured in individual files under `./grunt/<Task Name>.coffee`, so the sass tasks are configured in there and the grunt-load-config loads the config all together and makes the maintainance of the theme easier.

### Styles

- SASS
  - uses sass to compile the styles
- Bootstrap
  - Imports the bootstrap styles and overrides the default variables to get the "kalatheme_sauce" version of the theme.
  - all varialbles should be stored in /sass/library/_variables.scss
- Font Awesome is the font icon set used in this theme.
  - Kalatheme 4.x has support for the icon api project
- CSS is auto prefixed by  the can i use database, so you don't need to worry about vendor prefixes

### JavaScript

- Coffeescript is used a preprocessor
- Browserify is used for module loading to bundle the packaged script
- Jasmine is used for unit testing
- UglifyJS is used for minification after being bundled.

### Styleguide

You're reading the style guide now! The foundation is copied from the bootstrap docs, but we have changed how the default components look and added documentation for our new components. __This is a living document, so edit me like crazy__ this should be where you document your web components and show styles.


## Code guidelines

Taken from [Bootstrap's contributing guidelines](https://github.com/twbs/bootstrap/blob/master/CONTRIBUTING.md)

### HTML

- Two spaces for indentation, never tabs.
- Double quotes only, never single quotes.
- Always use proper indentation.
- Use tags and elements appropriate for an HTML5 doctype (e.g., self-closing tags).
- Use CDNs and HTTPS for third-party JS when possible. We don't use protocol-relative URLs in this case because they break when viewing the page locally via `file://`.
- Use [WAI-ARIA](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA) attributes in documentation examples to promote accessibility.

### CSS

- CSS changes must be done in `.scss` files first, never just in the compiled `.css` files.
- Adhere to the [CSS property order](http://markdotto.com/2011/11/29/css-property-order/).
- Multiple-line approach (one property and value per line).
- Always a space after a property's colon (e.g., `display: block;` and not `display:block;`).
- End all lines with a semi-colon.
- For multiple, comma-separated selectors, place each selector on its own line.
- Don't add vendor prefixed properties to their unprefixed counterparts (e.g., only `box-sizing` and not also include `-webkit-box-sizing`), as this is done automagically at build time.
- Attribute selectors, like `input[type="text"]` should always wrap the attribute's value in double quotes, for consistency and safety (see this [blog post on unquoted attribute values](http://mathiasbynens.be/notes/unquoted-attribute-values) that can lead to XSS attacks).
- Attribute selectors should only be used where absolutely necessary (e.g., form controls) and should be avoided on custom components for performance and explicitness.
- Series of classes for a component should include a base class (e.g., `.component`) and use the base class as a prefix for modifier and sub-components (e.g., `.component-lg`).
- Avoid inheritance and over nesting—use single, explicit classes whenever possible.
- When feasible, default color palettes should comply with [WCAG color contrast guidelines](http://www.w3.org/TR/WCAG20/#visual-audio-contrast).
- Except in rare cases, don't remove default `:focus` styles (via e.g. `outline: none;`) without providing alternative styles. See [this A11Y Project post](http://a11yproject.com/posts/never-remove-css-outlines/) for more details.

### CoffeeScript

Uses coffeelint to help check style best practices.
