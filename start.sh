#!/bin/bash

echo "target = '${TARGET_RTMP_URL}'"

if [ -n "${USE_CLOCK}" ]; then
  ffmpeg -re -stream_loop -1 -i 'src.mp4' -i 'src.aac' -map 0:0 -map 1:0 -vf "drawtext=fontfile=./NotoSans-Bold.ttf: text='%{localtime\:%FT%T}': fontcolor=black@0.8:fontsize=128: x=16: y=16" -vcodec libx264 -x264-params keyint=30 -acodec aac -f flv "${TARGET_RTMP_URL}"
else
  ffmpeg -re -stream_loop -1 -i 'src.mp4' -i 'src.aac' -map 0:0 -map 1:0 -vcodec copy -acodec aac -f flv "${TARGET_RTMP_URL}"
fi

