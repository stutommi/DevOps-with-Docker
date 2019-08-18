FROM node

WORKDIR /usr/app
RUN git clone https://github.com/docker-hy/frontend-example-docker.git .
RUN npm install
EXPOSE 5000
CMD npm start
