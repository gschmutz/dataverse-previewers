FROM nginx:latest

RUN apt update && apt install wget

WORKDIR /app

COPY . /app
COPY init.sh /docker-entrypoint.d  

RUN chmod +x /docker-entrypoint.d/init.sh \
        && chmod +x /app/localinstall.sh

# Expose the port Nginx will serve on
EXPOSE 80