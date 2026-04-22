#!/usr/bin/env bash

# Builds docker images
# Requires:
#   earthly (https://docs.earthly.dev)

earthly +main-image

earthly +dev-image

# tag and push the image to Docker Hub
export OS=`uname`
export ARCH=unknown
if [[ "$OS" =~ "Darwin" ]]; then
  export ARCH=`uname -m` # should be arm64 on apple silicon
elif [[ "$OS" =~ "Linux" ]]; then
  export ARCH=`dpkg --print-architecture` # should be amd64 on Ubuntu for x86_64
else
  echo "cannot determine operating system/architecture"
  exit 1
fi

export SPACEROS_TAG=2026.01
docker tag tiipsrc/space-ros:latest tiipsrc/space-ros:scai-$ARCH-$SPACEROS_TAG
docker push tiipsrc/space-ros:scai-$ARCH-$SPACEROS_TAG
