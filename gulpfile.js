//  gulp
const { series, parallel, src, dest, watch } = require('gulp');
// plugin
const rollup     = require('gulp-rollup');
const sourcemaps = require('gulp-sourcemaps');
const babel = require('gulp-babel');
const uglify = require('gulp-uglify');
const rename = require('gulp-rename');
const concat = require('gulp-concat');
// node module
const del = require('delete');
const copy = require('gulp-copy');


function bootstrap(cb) { 
  return src('./node_modules/bootstrap/**')
        .pipe(dest('./lib/bootstrap/'))
}


function jquery(cb) { 
  return src('./node_modules/jquery/src/**/*')
        .pipe(dest('./lib/jquery'))
}
function lib_clean(cb){
  del(['./lib/**/dist/'], cb)
}

// exports.default = series(clean, parallel( lib));

exports.start = series(parallel(bootstrap,jquery), 
                      lib_clean);
// watch('./packages/less/*.less', css);
// watch('./packages/*.js',javascript);