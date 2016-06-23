Docker container for converting gem files to deb packages using fpm -
https://github.com/jordansissel/fpm.

This version is for Debian 8 - Jessie & system ruby.

It is also available on Docker Hub as `stepanstipl/fpm-debian8-gem`.

Usage:
------
`docker run --rm -v $(pwd):/output stepanstipl/fpm-debian8-gem <gem-name>`

Env variables:
--------------
- `DEB_PREFIX` - You can overwrite desired package prefix name. Defaults
  to `rubygem`.

- `DEPENDENCIES` - If you want to package gem and all it's dependencies, set
  this tp true, such as `docker run --rm -v $(pwd):/output -e "DEPENDENCIES=true"
  fpm-debian8-gem <gem-name>`. Defaults to `false`.
