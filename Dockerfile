FROM debian:stretch-slim
RUN apt-get update && apt-get install -y git gcc make dumb-init && apt-get clean
RUN mkdir /build && cd /build && git clone https://github.com/rofl0r/microsocks.git && cd microsocks && make && make install && rm -R /build
USER nobody
WORKDIR /
ENTRYPOINT [ "dumb-init", "--" ]
CMD [ "microsocks" ]