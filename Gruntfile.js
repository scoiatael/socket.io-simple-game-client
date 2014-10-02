module.exports = function(grunt) {

  // Show elapsed time at the end
  require('time-grunt')(grunt);
  // Load all grunt tasks
  require('load-grunt-tasks')(grunt);

  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    sass: {
      options: {
        includePaths: ['dist/bower_components/foundation/scss']
      },
      dist: {
        options: {
          outputStyle: 'compressed'
        },
        files: {
          'dist/css/app.css': 'scss/app.scss'
        }
      }
    },
    uglify: {
      options: {
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("dd-mm-yyyy") %> */\n'
      },
      dist: {
        files: {
          'dist/js/app.min.js': ['dist/js/app.js']
        }
      }
    },
    watch: {
      grunt: { files: ['Gruntfile.js'] },

      sass: {
        files: 'scss/**/*.scss',
        tasks: ['sass']
        }
    },
    jest: {
      options: {
        config: "jestrc.json"
      }
    },
    webpack: {
      dist: {
        loaders: [
          { test: /\.coffee$/, loader: "coffee-loader" },
          { test: /.(coffee\.md|litcoffee)$/, loader: "coffee-loader?literate" }
        ],
        entry: "./js/app.coffee",
        output: {
          path: "dist/js/",
          filename: "app.js"
        }
      }
    }
  });

  grunt.registerTask('clean_webpack', function () {
    grunt.file.delete('dist/js/app.js');
  });

  grunt.registerTask('build', ['sass','webpack','uglify', 'clean_webpack']);
  grunt.registerTask('default', ['build']);

};
