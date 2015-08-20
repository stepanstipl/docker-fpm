Docker container for converting gem files to rpm packages using fpm -
https://github.com/jordansissel/fpm.

This version is for system ruby.

It is also available on Docker Hub as `stepanstipl:fpm-centos7-system`.

Usage:
------
`docker run -v $(pwd):/output stepanstipl:fpm-centos7-system <gem-name>`

Env variables:
--------------
- **RPM_PREFIX**
  You can overwrite desired package prefix name using $RPM_PREFIX env variable: `docker run -v $(pwd):/output -e "RPM_PREFIX=my-rubygem" stepanstipl:fpm-centos7-system <gem-name>`. Defaults to `rubygem`.
