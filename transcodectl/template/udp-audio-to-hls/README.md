UDP audio to HLS
================

This template takes audio UDP stream at input and produces [HLS](https://developer.apple.com/streaming/) on output.


Environment variables
---------------------

**`UDPAUDIO2HLS_AUDIO_BITRATE`**

Set output audio stream bitrate.

**`UDPAUDIO2HLS_AUDIO_CODEC`**

Set output audio stream codec. Supported audio codecs dependes on used transcode Docker image.

**`UDPAUDIO2HLS_HLS_BASE_URL`**

Append baseurl to every entry in the playlist. Useful to generate playlists with absolute paths.

**`UDPAUDIO2HLS_HLS_FLAGS (default: delete_segments)`**

Set the hls_flags. See [FFmpeg formats](https://ffmpeg.org/ffmpeg-formats.html#hls-2) for more details.

**`UDPAUDIO2HLS_HLS_LIST_SIZE (default: 10)`**

Set the maximum number of playlist entries. If set to 0 the list file will contain all the segments.

**`UDPAUDIO2HLS_HLS_SEGMENT_FILENAME (default segment-%03d.ts)`**

Set the segment filename. See [FFmpeg formats](https://ffmpeg.org/ffmpeg-formats.html#hls-2) for more details.

**`UDPAUDIO2HLS_HLS_TIME (default: 6)`**

Set the target segment length in seconds. Segment will be cut on the next key frame after this time has passed. 

**`UDPAUDIO2HLS_INPUT_BITRATE`**

Maximal overall input bitrate (in bytes). Used to calculate `buffer_size` and `fifo_size`. See [FFmpeg protocols](https://ffmpeg.org/ffmpeg-protocols.html#udp) for more details.

**`UDPAUDIO2HLS_LOGLEVEL`**

Set FFmpeg logging level.

**`UDPAUDIO2HLS_META_SERVICE_NAME`**

Set `service_name` metadata in output stream.

**`UDPAUDIO2HLS_META_SERVICE_PROVIDER`**

Set `service_provider` metadata in output stream.


Usage
-----

This will create new transcode service named `channel-1` from input stream `udp://224.1.1.1:1234` based on `udp-audio-to-hls` template.

```
# transcodectl configure channel-1 udp-to-hls
# transcodectl build channel-1 udp://224.1.1.1:1234 "Channel 1"
# transcodectl start channel-1
```
