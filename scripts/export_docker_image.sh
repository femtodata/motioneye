#!/bin/bash
mkdir -p $(dirname $0)/../docker_images
cd $(dirname $0)/../docker_images

docker save femtodata/motioneye:dev-amd64 | gzip > femtodata_motioneye_dev-amd64.tar.gz
