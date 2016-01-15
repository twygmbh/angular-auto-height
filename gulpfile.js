var gulp = require('gulp'),
    coffee = require('gulp-coffee'),
    uglify = require('gulp-uglify'),
    nugetpack = require('gulp-nuget-pack');

gulp.task('build', function () {
   return gulp.src('./src/*.coffee')
       .pipe(coffee())
       .pipe(uglify())
       .pipe(gulp.dest('./dist/'))
});

gulp.task('nuget', function (callback) {
    nugetpack({
       id: 'AngularAutoHeight',
       version: '0.0.5',
       authors: 'Emanuel Imhof <hello@twygmbh.ch>',
       description: 'An AngularJS directive to automatically adjust the height of an element corresponding to the parent and siblings.'
    }, [ 'dist/*.js' ], callback);
});