FROM debian:buster

RUN apt update
RUN apt install nginx -y
RUN mkdir -p /etc/nginx/ssl
RUN apt install openssl -y
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=IT/L=Rome/O=42Roma/OU=student/CN=$USERNAME.42.fr"
RUN mkdir -p /var/run/nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

# ==> Start the nginx service
CMD [ "nginx", "-g", "daemon off;" ]
