FROM node as build-stage

WORKDIR /app

RUN git clone https://github.com/docker-hy/frontend-example-docker . && npm install && npm run build
FROM nginx
COPY --from=build-stage /app/dist /usr/share/nginx/html
