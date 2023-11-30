FROM centos:latest
MAINTAINER ahmadayan0302@gmail.com
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip /var/www/html
WORKDIR /var/www/html
RUN unzip oxer.zip
RUN cp -rvf oxer-html/*
RUN rm -rf __MACOSX oxer-html oxer.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
