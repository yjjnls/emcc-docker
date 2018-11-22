# Version 0.1

# base
FROM conanio/gcc7

# maintainer
MAINTAINER x-jj@foxmial.com

# operations
RUN sudo su
RUN apt-get -yqq update 
RUN apt-get -yqq upgrade
RUN cd /opt
RUN sudo git clone https://github.com/juj/emsdk.git
RUN cd emsdk
RUN sudo ./emsdk install latest
RUN sudo ./emsdk activate latest
RUN source ./emsdk_env.sh

# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]