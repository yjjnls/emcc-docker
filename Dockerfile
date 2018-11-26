# Version 0.1

# base
FROM conanio/gcc7

# maintainer
MAINTAINER x-jj@foxmail.com

# operations
# RUN sudo apt-get -yqq update 
# RUN sudo apt-get -yqq upgrade
RUN git clone https://github.com/juj/emsdk.git
RUN cd emsdk && ./emsdk install latest && ./emsdk activate latest

# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]