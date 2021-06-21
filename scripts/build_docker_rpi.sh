#!/bin/bash
cd $(dirname $0)/..
docker run --rm --privileged multiarch/qemu-user-static:register --reset
docker build --build-arg VCS_REF=$(git rev-parse HEAD) --build-arg BUILD_DATE=$(date +"%Y-%m-%dT%H:%M:%SZ") -t femtodata/motioneye:dev-armhf -f extra/Dockerfile.armv7-armhf .
