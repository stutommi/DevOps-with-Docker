FROM ubuntu:16.04 

ENV LC_ALL=C.UTF-8 PATH=$PATH:$HOME/.local/bin

WORKDIR /app
 
RUN apt-get update && \
    apt-get install -y git rtmpdump wget ffmpeg python3-dev python3-setuptools \
    python3-crypto python3-requests python3-lxml \
    php-cli php-curl php-xml php-bcmath gcc && \
    git clone https://github.com/aajanki/yle-dl.git && \
    cd yle-dl && python3 setup.py install --user && \ 
    chmod a+x /root/.local/bin/yle-dl && \
    mkdir videos && \
    apt-get purge -y --auto-remove git python3-dev python3-setuptools
VOLUME yle-dl/videos

ENTRYPOINT ["/root/.local/bin/yle-dl", "--destdir", "yle-dl/videos"]
