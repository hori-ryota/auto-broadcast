#!/bin/bash

echo "target = '${TARGET_RTMP_URL}'"

ffmpeg -re -stream_loop -1 -i 'src.mp4' -vf "drawtext=fontfile=./NotoSans-Bold.ttf: text='%{localtime\:%FT%T}': fontcolor=black@0.8:fontsize=64: x=32: y=32" -vcodec libx264 -x264-params keyint=30 -acodec aac -f flv "${TARGET_RTMP_URL}"
