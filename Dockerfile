FROM ubuntu:20.04
RUN apt-get update && apt-get install -y nginx 
ADD index.html /var/www/html/index.html
WORKDIR /usr/share/nginx/html
EXPOSE 80 
CMD nginx -g 'daemon off;' && bash
