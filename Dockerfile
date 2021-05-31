# ref: https://hub.docker.com/_/alpine
FROM alpine:edge AS env
LABEL maintainer="anmol.chachra@gmail.com"
# Install system build depenedencies
ENV PATH=/usr/local/bin:$PATH
RUN apk add --no-cache git build-base linux-headers cmake

# SWIG
RUN apk add --no-cache swig

# Python
RUN apk add --no-cache python3-dev py3-pip py3-wheel

