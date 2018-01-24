module.exports = function(grunt) {
  grunt.initConfig({
    watch: {
      files: ['*.ly'],
      tasks: ['make']
    },
  });
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-make');
  grunt.registerTask('default', ['watch']);
};
