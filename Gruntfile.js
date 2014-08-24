module.exports = function(grunt) {

  // Show elapsed time at the end
  require('time-grunt')(grunt);
  // Load all grunt tasks
  require('load-grunt-tasks')(grunt);

  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    dist: {
      dest: "dist/<%= pkg.name %>.js"
    },
    uglify: {
      options: {
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("dd-mm-yyyy") %> */\n'
      },
      dist: {
        files: {
          'dist/<%= pkg.name %>.min.js': ['<%= dist.dest %>']
        }
      }
    },
    jest: {
      options: {
        config: "jestrc.json"
      }
    },
    coffeeify: {
      options: {},
      files: {
        src: ['src/**/*.coffee'],
        dest: '<%= dist.dest %>'
      }
    }
  });

  grunt.registerTask('default', ['coffeeify', 'uglify']);

};
