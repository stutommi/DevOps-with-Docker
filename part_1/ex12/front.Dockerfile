FROM node

WORKDIR /usr/app
COPY . .
RUN npm install
EXPOSE 5000
CMD API_URL=http://localhost:8000 npm start
