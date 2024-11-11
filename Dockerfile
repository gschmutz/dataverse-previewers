FROM nginx:latest

ENV VERSIONS="v1.4"
ENV NGINX_PORT=80

RUN apt update && apt install wget

# Copy the template file to the container
COPY nginx.conf.template /etc/nginx/templates/nginx.conf.template

WORKDIR /app

COPY . /app
COPY init.sh /docker-entrypoint.d  

RUN chmod +x /docker-entrypoint.d/init.sh \
        && chmod +x /app/localinstall.sh
