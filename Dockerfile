FROM multiarch/debian-debootstrap:armhf-buster

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get -y -q --no-install-recommends install \
      ca-certificates \
      curl \
      apt-transport-https \
      gnupg \
    && rm -rf /var/lib/apt/lists/*

RUN curl -k -sSL https://dtcooper.github.io/raspotify/key.asc | apt-key add -v - && \
    echo "deb https://dtcooper.github.io/raspotify raspotify main" > /etc/apt/sources.list.d/raspotify.list

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
      raspotify \
    && rm -rf /var/lib/apt/lists/*

ENV DEVICE_NAME "Raspotify"
ENV BITRATE 160

USER raspotify

CMD /usr/bin/librespot --name "${DEVICE_NAME}" --backend alsa --bitrate ${BITRATE} --disable-audio-cache --enable-volume-normalisation --linear-volume --initial-volume=100
