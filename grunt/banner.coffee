module.exports = ->
  return "/*! <%= package.title || package.name %> - v<%= package.version %> - "
  + "<%= grunt.template.today(\"yyyy-mm-dd\") %>\n"
  + "<%= package.homepage ? \"* \" + package.homepage + \"\\n\" : \"\" %>"
  + "* Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= package.author.name %>;"
  + " Licensed <%= _.pluck(package.licenses, \"type\").join(\", \") %> */\n"
  + "/*!\n" + "* Bootstrap v3.1.1 (http://getbootstrap.com)\n"
  + "* Copyright 2011-2014 Twitter, Inc.\n"
  + "* Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)\n"
  + "*/\n"
