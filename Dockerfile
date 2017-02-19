FROM horiryota/ffmpeg

COPY src.mp4 ./
COPY start.sh ./
COPY NotoSans-Bold.ttf ./

ENTRYPOINT ["/bin/sh", "./start.sh"]
