transcodectl
============

transcodectl is a toolkit for managing multiple instances of [`bbxnet/transcode-ffmpeg`](https://hub.docker.com/r/bbxnet/transcode-ffmpeg) container image.


Installation
------------

To install transcodectl from source run:

```
$ git clone --recursive https://github.com/bbxnet/transcode
$ cd transcodectl
# make install
```


Environment variables
---------------------

This script recognizes following variables that can be set in `/etc/transcode/transcodectl.conf` configuration file.

**`TRANSCODECTL_GPU_LIST`**

List of available nvidia GPU's for auto-select script. If not set all GPU's listed by `nvidia-smi` are used.

**`TRANSCODECTL_GPU_MEMORY_REQUIREMENT`**

Minimal available memory of nvidia GPU to be considered acceptable for transcoding (in MB).

**`TRANSCODECTL_GPU_UTILIZATION_LIMIT`**

Maximum decoder / encoder utilization of nvidia GPU to be considered acceptable for transcoding (in %).


Templates
---------

Provided templates:

* [UDP to HLS](template/udp-to-hls)


Template layout
---------------

**`./build`**

**`./configure`**

**`./rekey (optional)`**
