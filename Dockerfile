FROM debian:stretch

COPY . /tmp

RUN /tmp/install.sh 

ENV LC_ALL pt_BR.UTF-8
ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR.UTF-8
