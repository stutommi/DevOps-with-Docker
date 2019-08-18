FROM node

WORKDIR /usr/app
RUN git clone https://github.com/docker-hy/frontend-example-docker.git .
RUN npm install
EXPOSE 5000
CMD API_URL=http://localhost:8000 npm start
