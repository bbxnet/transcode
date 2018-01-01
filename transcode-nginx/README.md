Transcode NGINX
===============

This repository contains Dockerfiles and scripts for transcode nginx server based on `tomashavlas/nginx` container image.

This container image is available on Docker Hub  as `bbxnet/transcode-nginx`.


Installation
------------

This image is available on DockerHub. To download it run:

```
$ docker pull bbxnet/transcode-nginx
```

To build latest container image from source run:

```
$ git clone --recursive https://github.com/bbxnet/transcode
$ cd transcode-nginx
$ git submodule update --init
$ make build
```
