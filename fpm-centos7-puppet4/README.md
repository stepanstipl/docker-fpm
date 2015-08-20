Docker container for converting gem files to rpm packages using fpm -
https://github.com/jordansissel/fpm.

This version is for ruby bundled with Puppet 4 on CentOS 7.
*Puppet 4 comes with it's own independent version of Ruby, installed in
/opt/puppetlabs* 

It is also available on Docker Hub as `stepanstipl:fpm-centos7-puppet4`.

Usage:
------
`docker run -v $(pwd):/output stepanstipl:fpm-centos7-puppet4 <gem-name>`

Env variables:
--------------
- **RPM_PREFIX**
  You can overwrite desired package prefix name using $RPM_PREFIX env variable: `docker run -v $(pwd):/output -e "RPM_PREFIX=my-rubygem" stepanstipl:fpm-centos7-puppet4 <gem-name>`. Defaults to `puppet-rubygem`.
