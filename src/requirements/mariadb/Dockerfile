FROM debian:buster

RUN apt update -y && \
    apt upgrade -y && \
    apt install vim -y && \
    apt-get install mariadb-server -y

COPY ./tools/config.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/config.sh

# Start the MySQL service
CMD service mysql start && /usr/local/bin/config.sh
