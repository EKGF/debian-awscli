#!/usr/bin/env bash
_IMAGE_NAME="docker.io/ekgf/debian-awscli"
_IMAGE_VERSION="latest"
# also bump the  version in .github/workflows/build.yml
_MANUALLY_INCREMENTED_IMAGE_VERSION="0.0.24"

docker build . \
  --iidfile=image.id \
  "--tag=${_IMAGE_NAME}:${_IMAGE_VERSION}" \
  "--tag=${_IMAGE_NAME}:${_MANUALLY_INCREMENTED_IMAGE_VERSION}"
exit $?
