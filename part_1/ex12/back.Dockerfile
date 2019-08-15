FROM node

WORKDIR /usr/app

COPY package.json .
RUN npm install
COPY . .
EXPOSE 8000
CMD FRONT_URL=http://localhost:5000 npm start
