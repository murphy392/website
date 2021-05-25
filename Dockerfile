FROM hshar/webapp
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install apache2
ENTRYPOINT apachectl -D FOREGROUND
RUN rm /var/www/html/index.html
ADD ./index.html /var/www/html
ADD ./images /var/www/html/images