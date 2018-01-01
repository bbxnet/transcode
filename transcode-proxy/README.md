Transcode Proxy
===============

This repository contains Dockerfiles and scripts for transcode proxy server based on `tomashavlas/nginx` container image.

This container image is available on Docker Hub  as `bbxnet/transcode-proxy`.


Installation
------------

This image is available on DockerHub. To download it run:

```
$ docker pull bbxnet/transcode-proxy
```

To build latest container image from source run:

```
$ git clone --recursive https://github.com/bbxnet/transcode
$ cd transcode-proxy
$ git submodule update --init
$ make build
```
