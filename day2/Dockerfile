#base on https://github.com/fideloper/docker-nginx-php
FROM 30doacontainerregistry932.azurecr.io/ubuntu:serviceonboot-mssqlodbc

#commands already executed in the image above
#apt-get update

#DEBIAN_FRONTEND="noninteractive" apt-get install -y vim curl wget nano dialog
#apt-get upgrade
#apt-get install nginx
#apt-get install php-fpm

#update-rc.d nginx defaults
#update-rc.d php7.2-fpm defaults

CMD ["/sbin/my_init"]


WORKDIR /var/www/html

COPY / /var/www/html
RUN ls -la /*

EXPOSE 80 443

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD service php7.2-fpm start &&  service nginx start && tail -f /var/log/nginx/error.log
