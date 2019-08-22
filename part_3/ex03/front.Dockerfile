FROM ubuntu:16.04
WORKDIR /app
RUN apt-get update && apt-get install -y curl git && \
    git clone https://github.com/docker-hy/frontend-example-docker.git . && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash && \
    apt-get install -y nodejs && \
    npm install && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get purge -y --auto-remove curl git && \
    useradd -m app && ls && chown -R app .
USER app
RUN echo "Current user: $(whoami)"
CMD npm start
