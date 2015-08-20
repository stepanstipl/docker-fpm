Docker container for converting gem files to rpm packages using fpm -
https://github.com/jordansissel/fpm.

There are two versions for CentOS 7:
- fpm-centos7-system - version for system ruby
- fpm-centos7-puppet4 - version for Ruby bundled with Puppet 4

*Puppet 4 comes in so called AIO package with bundled ruby.*

These containers are also available on Docker Hub as
`stepanstipl:fpm-centos7-system` and `stepanstipl:fpm-centos7-puppet4`.

Usage:
------
`docker run -v $(pwd):/output stepanstipl:fpm-centos7-puppet4 <gem-name>`
