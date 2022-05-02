#!/bin/bash
cd $(dirname $0)/..
docker build --build-arg VCS_REF=$(git rev-parse HEAD) --build-arg BUILD_DATE=$(date +"%Y-%m-%dT%H:%M:%SZ") -t femtodata/motioneye:dev-amd64 -f docker/Dockerfile .
