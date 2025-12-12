#!/usr/bin/env bash

# Builds docker images
# Requires:
#   earthly (https://docs.earthly.dev)

earthly +main-image

earthly +dev-image
