#!/bin/bash
set -ex

if [[ "${DEPENDENCIES}" == "true" ]]; then
  mkdir /tmp/gems
  gem install --no-ri --no-rdoc --install-dir /tmp/gems "$@"
  cd /output
  find /tmp/gems/cache -name '*.gem' | xargs -rn1 fpm -d ruby -d rubygems --prefix $(gem environment gemdir) -s gem -t rpm --gem-package-name-prefix "${RPM_PREFIX}"
else
  # This is to expand variables, which entrypoint does not do
  fpm -s gem -t rpm --gem-package-name-prefix "${RPM_PREFIX}" "$@"
fi
