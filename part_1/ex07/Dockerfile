FROM ubuntu

WORKDIR /usr/app
COPY . .
RUN chmod +x ./start.sh
RUN apt-get update && apt-get install -y curl
CMD ["./start.sh"]
