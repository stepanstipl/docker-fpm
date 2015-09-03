Docker container for converting gem files to rpm packages using fpm -
https://github.com/jordansissel/fpm.

This version is for ruby bundled with Puppet 4 on CentOS 7.  *Puppet 4 comes
with it's own independent version of Ruby, installed in /opt/puppetlabs.* 

It is also available on Docker Hub as `stepanstipl/fpm-centos7-gem-puppet4`.


Usage:
------ 

`docker run --rm -v $(pwd):/output stepanstipl/fpm-centos7-gem-puppet4
<gem-name>`


Env variables:
--------------

- `RPM_PREFIX` - You can overwrite desired package prefix name. Defaults
  to `puppetlabs-rubygem`.

- `DEPENDENCIES` - If you want to package gem and all it's dependencies, set
  this to true, such as `docker run --rm -v $(pwd):/output -e "DEPENDENCIES=true"
  fpm-centos7-gem-puppet4 <gem-name>`. Defaults to `false`.
