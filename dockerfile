FROM centos:latest
RUN yum -y update
RUN yum install -y httpd
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD apachectl -D FOREGROUND