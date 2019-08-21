FROM node

WORKDIR /usr/app

RUN git clone https://github.com/docker-hy/backend-example-docker.git .
RUN npm install
EXPOSE 8000
CMD FRONT_URL=http://localhost npm start
