FROM tutum/lamp:latest

RUN apt-get -y update
RUN apt-get -y -f install php5-curl
RUN rm -fr /app && git clone https://github.com/oat-sa/package-tao /app
RUN curl -sS https://getcomposer.org/installer | php \
&& mv composer.phar /usr/local/bin/composer

# Copy start script
ADD ./install.sh /install.sh

EXPOSE 80

