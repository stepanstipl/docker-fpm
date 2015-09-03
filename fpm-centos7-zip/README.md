Docker container for converting zip files to rpm packages using fpm -
https://github.com/jordansissel/fpm.

It is also available on Docker Hub as `stepanstipl/fpm-centos7-zip`.

Usage:
------
`docker run --rm -v $(pwd):/output stepanstipl/fpm-centos7-zip <URL_or_path_to_file>`

If the file zip file does not exist in current directory, we'll try to download
it using wget.

Examples:
---------
- To package local file named my_app.zip to /opt:
`docker run --rm -v $(pwd):/output stepanstipl/fpm-centos7-zip my_app.zip`

- To package packer app form web (cool app by Hashicorp):
`docker run --rm -v $(pwd):/output stepanstipl/fpm-centos7-zip
 https://dl.bintray.com/mitchellh/packer/packer_0.8.6_linux_amd64.zip`

Variables:
----------
Following variables can be passed as env variables:

- `NAME` - Name of the package (by default will be picked up from filename)

- `VERSION` - Version (by default it will be picked up from filename, if it's
   in semantic A.B.C versioning form)

- `DESCRIPTION` - Description of rpm package

- `PREFIX` - Location (by default /opt/$NAME)
