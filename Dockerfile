FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y php7.4 php7.4-gd php7.4-imagick php7.4-mysql php7.4-zip php7.4-mbstring php7.4-xml php7.4-dom
RUN apt-get install -y zip apache2 apache2-doc apache2-utils ssl-cert libapache2-mod-php
EXPOSE 80
ENTRYPOINT service apache2 restart && /bin/bash