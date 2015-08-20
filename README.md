Docker container for converting gem files to rpm packages using fpm -
https://github.com/jordansissel/fpm - for Puppet 4.

*Puppet 4 comes in so called AIO package with bundled ruby.*

Thist container is also available on Docker hub as
stepanstipl:fpm-centos-puppet4.

Usage:
------
`docker run -v $(pwd):/output fpm-centos-puppet4 r10k`

Building container
------------------
`docker build -t fpm-centos-puppet4 -f Dockerfile`
