#!/usr/bin/env bash
_IMAGE_NAME="docker.io/ekgf/debian-awscli"

# if there are local changes, flag the current version short_sha as "-dirty"
# this is never a problem when running as github actions, see .github/workflows/build.yml
if ! git diff --quiet ; then
  _IS_DIRTY="-dirty"
fi

_IMAGE_VERSION="$(git rev-parse --short=7 HEAD)"

# postfix with "-SNAPSHOT" to indicate the version is under development and the image may be overwritten in dockerhub
_MANUALLY_INCREMENTED_IMAGE_VERSION="0.0.31"

docker build . \
  --iidfile=image.id \
  "--tag=${_IMAGE_NAME}:${_IMAGE_VERSION}${_IS_DIRTY}" \
  "--tag=${_IMAGE_NAME}:${_MANUALLY_INCREMENTED_IMAGE_VERSION}${_IS_DIRTY}"
exit $?
