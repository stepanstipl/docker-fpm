#!/bin/bash
set -ex

URL="$@"
FILE=$(basename "${URL}")
[[ -z "$NAME" ]] && NAME=$(echo "${FILE}" | grep -Eo "^[a-z]+")
[[ -z "$VERSION" ]] && VERSION=$(echo "${FILE}" | grep -oE "[[:digit:]]+\.[[:digit:]]+\.[[:digit:]]")
[[ -z "$PREFIX" ]] && PREFIX="/opt/${NAME}"
[[ -z "$DESCRIPTION" ]] && DESCRIPTION="${NAME} - ${VERSION} - Packaged by fpm from ${URL}"

# This is to expand variables, which entrypoint does not do
[[ -f "$FILE" ]] || wget -k "$@"
fpm -s zip -t rpm -n "${NAME}" -v "${VERSION}" --url "${URL}" --description "${DESCRIPTION}" --prefix "${PREFIX}" "${FILE}"
