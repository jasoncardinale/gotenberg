#!/bin/bash

set -e

GOLANG_VERSION="1.22.5"
GOTENBERG_VERSION="8.7.0"
GOTENBERG_USER_GID="1001"
GOTENBERG_USER_UID="1001"
NOTO_COLOR_EMOJI_VERSION="15.1"
PDFTK_VERSION="v3.3.3"
DOCKER_REPOSITORY="$1"
TAG="$2"

docker buildx build \
  --build-arg GOLANG_VERSION="$GOLANG_VERSION" \
  --build-arg GOTENBERG_VERSION="$GOTENBERG_VERSION" \
  --build-arg GOTENBERG_USER_GID="$GOTENBERG_USER_GID" \
  --build-arg GOTENBERG_USER_UID="$GOTENBERG_USER_UID" \
  --build-arg NOTO_COLOR_EMOJI_VERSION="$NOTO_COLOR_EMOJI_VERSION" \
  --build-arg PDFTK_VERSION="$PDFTK_VERSION" \
  --platform linux/arm64 \
  --platform linux/amd64 \
  -t "$DOCKER_REPOSITORY:$TAG" \
  --push \
  -f build/Dockerfile.distroless .
