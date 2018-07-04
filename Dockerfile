FROM horiryota/ffmpeg

COPY src.mp4 ./
COPY src.aac ./
COPY start.sh ./
COPY NotoSans-Bold.ttf ./

ENTRYPOINT ["/bin/sh", "./start.sh"]
