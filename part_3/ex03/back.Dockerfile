FROM ubuntu:16.04

WORKDIR /app
RUN apt-get update && apt install -y git curl && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash && \
    apt install -y nodejs && \
    git clone https://github.com/docker-hy/backend-example-docker.git . && \
    npm install && apt-get purge -y --auto-remove git curl && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && chown app node_modules logs.txt
USER app
RUN echo "Current user: $(whoami)"
EXPOSE 8000
CMD FRONT_URL=http://localhost npm start
