FROM nginx:latest

RUN apt update && apt install wget

WORKDIR /app

COPY . /app
COPY init.sh /docker-entrypoint.d  

# Expose the port Nginx will serve on
EXPOSE 80