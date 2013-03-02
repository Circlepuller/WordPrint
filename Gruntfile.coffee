module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    less:
      development:
        files:
          "public/css/${pkg.name}.css": [
            # Edit this
            'lib/bootstrap/less/bootstrap.less'
            'lib/bootstrap/less/responsive.less'
          ]

      production:
        options:
          compress: true

        files:
          "public/css/${pkg.name}.min.css": [
            'lib/bootstrap/less/bootstrap.less'
            'lib/bootstrap/less/responsive.less'
          ]

    uglify:
      development:
        options:
          beautify: true

        files:
          "public/js/${pkg.name}.js": [
            'lib/bootstrap/js/bootstrap-collapse.js'
          ]

      production:
        files:
          "public/js/${pkg.name}.min.js": [
            'lib/bootstrap/js/bootstrap-collapse.js'
          ]

  grunt.loadNpmTasks 'grunt-contrib-less'

  grunt.registerTask 'compile', ['less']
  grunt.registerTask 'default', ['compile']