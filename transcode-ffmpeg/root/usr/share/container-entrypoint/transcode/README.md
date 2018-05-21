Transcode FFmpeg
================

This repository contains Dockerfiles and scripts for transcode FFmpeg based on [`nvidia/cuda`](https://hub.docker.com/r/nvidia/cuda/) container image.

This container image includes FFmpeg version 4.0 built with [nvidia](https://developer.nvidia.com/ffmpeg) hardware acceleration support.

The container image is available on [Docker Hub](https://hub.docker.com/r/bbxnet/transcode-ffmpeg) as `bbxnet/transcode-ffmpeg`.


Installation
------------

This image is available on DockerHub. To download it run:

```
$ docker pull bbxnet/transcode-ffmpeg
```

To build latest container image from source run:

```
$ git clone --recursive https://github.com/bbxnet/transcode
$ cd transcode-ffmpeg
$ git submodule update --init
$ make build
```


FFmpeg parameters
-----------------

This image loads parameters for FFmpeg from configuration files located in `/etc/transcode`.

Configuration files are processed in following order:

**`transcode.conf`**

Should contain global parameters.

**`input.conf` / `input.d/*.conf`**

Should contain FFmpeg input(s) and it's parameters.

**`output.conf` / `output.d/*.conf`**

Should contain FFmpeg output(s) and it's parameters.


Environment variables
---------------------

This images recognizes the following environment variables that can be set during initialization by passing `-e VAR=VALUE` to the Docker run command.

**`TRANSCODE_GPU (default: any)`**

Set NVENC capable GPU to use, if set to `any` pick the first device available.


Volumes
-------

The following mount points can be set by passing `-v /host/path:/container/path` to the Docker run command.

**`/etc/transcode`**

FFmpeg transcode configuration directory.

**`/srv/stream`**

FFmpeg transcode data directory.


Troubleshooting
---------------

The FFmpeg daemon in the container logs to the standard output by default, so the logs are available in container log.
The log can be examined by running:

```
$ docker logs <container>
```


See also
--------

Dockerfile and other sources for this container image are available on https://github.com/bbxnet/transcode.
