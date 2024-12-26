FROM debian:bullseye

ARG DB_HOST
ARG DB_NAME
ARG WP_TITLE
ARG WP_ADMIN_USERNAME
ARG WP_ADMIN_PASSWORD
ARG WP_ADMIN_EMAIL

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install less curl unzip php php-mysql php-fpm mariadb-client -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /run/php /home/nephtys

COPY ./www.conf /etc/php/7.4/fpm/pool.d/
COPY ./wp_setup.sh 	/usr/local/bin/wp_setup.sh

RUN chmod +x /usr/local/bin/wp_setup.sh

CMD ["/usr/local/bin/run.sh"]