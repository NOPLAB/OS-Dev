#!/bin/bash

xhost +
docker run \
    --platform linux/amd64 \
    --privileged \
    -it \
    --mount type=bind,source="$(pwd)",target=/home/vscode/workspace \
    --user vscode \
    ghcr.io/sarisia/mikanos:vnc-amd64 \
    /bin/bash
