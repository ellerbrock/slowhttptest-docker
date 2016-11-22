FROM phusion/baseimage

MAINTAINER Maik Ellerbrock (https://github.com/ellerbrock)

RUN apt-get update && \
  apt-get install slowhttptest && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["slowhttptest"]
CMD ["-h"]
