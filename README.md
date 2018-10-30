# microsocks docker image

Docker image for running a microsocks instance.
Dockerhub auto-build triggers on base image upstream changes (debian:stretch-slim)

Building blocks are:
- debian:stretch-slim
- microsocks proxy (https://github.com/rofl0r/microsocks/tree/master)
- dumb-init as container entrypoint (https://github.com/Yelp/dumb-init)

Usage:
- docker-compose up proxy
- docker-compose run --rm curl http://api.ipify.org