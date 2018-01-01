UDP to HLS
==========

This template takes UDP stream at input and produces [HLS](https://developer.apple.com/streaming/) on output.


Environment variables
---------------------

**`UDP2HLS_AUDIO_BITRATE`**

Set output audio stream bitrate.

**`UDP2HLS_AUDIO_CODEC`**

Set output audio stream codec. Supported audio codecs dependes on used transcode Docker image.

**`UDP2HLS_HLS_BASE_URL`**

Append baseurl to every entry in the playlist. Useful to generate playlists with absolute paths.

**`UDP2HLS_HLS_FLAGS (default: delete_segments)`**

Set the hls_flags. See [FFmpeg formats](https://ffmpeg.org/ffmpeg-formats.html#hls-2) for more details.

**`UDP2HLS_HLS_LIST_SIZE (default: 10)`**

Set the maximum number of playlist entries. If set to 0 the list file will contain all the segments.

**`UDP2HLS_HLS_SEGMENT_FILENAME (default segment-%03d.ts)`**

Set the segment filename. See [FFmpeg formats](https://ffmpeg.org/ffmpeg-formats.html#hls-2) for more details.

**`UDP2HLS_HLS_TIME (default: 6)`**

Set the target segment length in seconds. Segment will be cut on the next key frame after this time has passed. 

**`UDP2HLS_INPUT_BITRATE`**

Maximal overall input bitrate (in bytes). Used to calculate `buffer_size` and `fifo_size`. See [FFmpeg protocols](https://ffmpeg.org/ffmpeg-protocols.html#udp) for more details.

**`UDP2HLS_INPUT_CUVID (default: 0)`**

Enable internal hardware decoders. See [guide](https://trac.ffmpeg.org/wiki/HWAccelIntro) for more info.

**`UDP2HLS_INPUT_DEINTERLACE (default: 0)`**

Set deinterlacing mode and drop second field when deinterlacing.

**`UDP2HLS_INPUT_RESIZE`**

Resize input video stream to (width)x(height).

**`UDP2HLS_LOGLEVEL`**

Set FFmpeg logging level.

**`UDP2HLS_META_SERVICE_NAME`**

Set `service_name` metadata in output video stream.

**`UDP2HLS_META_SERVICE_PROVIDER`**

Set `service_provider` metadata in output video stream.

**`UDP2HLS_VIDEO_BITRATE`**

Set output video stream bitrate.

**`UDP2HLS_VIDEO_CODEC`**

Set output video stream codec. Supported video codecs dependes on used transcode Docker image.

**`UDP2HLS_VIDEO_FRAMERATE`**

Set output video stream framerate.

**`UDP2HLS_VIDEO_KEYFRAME`**

Set output video stream keyframe frequency.


Usage
-----

This will create new transcode service named `channel-1` from input stream `udp://224.1.1.1:1234` based on `udp-to-hls` template.

```
# transcodectl configure channel-1 udp-to-hls
# transcodectl build channel-1 udp://224.1.1.1:1234 "Channel 1"
# transcodectl start channel-1
```
