#!/bin/bash
set -ex

# This is to expand variables, which entrypoint does not do
fpm -s gem -t rpm --gem-package-name-prefix ${RPM_PREFIX} "$@"
