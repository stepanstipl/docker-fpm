Docker container for converting gem files to rpm packages using fpm -
https://github.com/jordansissel/fpm.

This version is for system ruby.

It is also available on Docker Hub as `stepanstipl/fpm-centos7-gem-system`.

Usage:
------
`docker run --rm -v $(pwd):/output stepanstipl/fpm-centos7-gem-system <gem-name>`

Env variables:
--------------
- `RPM_PREFIX` - You can overwrite desired package prefix name. Defaults
  to `rubygem`.

- `DEPENDENCIES` - If you want to package gem and all it's dependencies, set
  this tp true, such as `docker run --rm -v $(pwd):/output -e "DEPENDENCIES=true"
  fpm-centos7-system <gem-name>`. Defaults to `false`.
