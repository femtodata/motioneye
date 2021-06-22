#!/bin/bash
mkdir -p $(dirname $0)/../docker_images
cd $(dirname $0)/../docker_images

docker save femtodata/motioneye:dev-armhf | gzip > femtodata_motioneye_dev-armhf.tar.gz
