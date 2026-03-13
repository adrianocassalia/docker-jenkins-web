FROM ubuntu
MAINTAINER Apasoft Training "apasoft.training@gmail.com"
RUN sudo apt update
RUN sudo apt install -y nginx
ADD web /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
