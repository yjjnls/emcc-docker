# Version 0.1

# base
FROM conanio/gcc7

# maintainer
MAINTAINER x-jj@foxmail.com

# operations
RUN sudo apt-get -yqq update 
RUN sudo apt-get -yqq upgrade
RUN sudo git clone https://github.com/juj/emsdk.git
RUN cd emsdk && sudo ./emsdk install latest && sudo ./emsdk activate latest && source ./emsdk_env.sh

# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]