  1 FROM node
  2 
  3 WORKDIR /usr/app
  4 COPY . .
  5 RUN npm install
  6 EXPOSE 5000
  7 CMD API_URL=http://localhost:8000 npm start
