FROM ubuntu:latest
MAINTAINER Dawid Stec <dawid.stec@gmail.com>
LABEL Description="Docker image for building arm-embedded"

RUN apt-get update && apt-get install -y \
  git \
  cmake \
  make \
  automake \
  libffi-dev \
  libssl-dev \
  libusb-1.0.0 \
  libusb-1.0.0-dev \
  software-properties-common \
  ccache

# arm-none-eabi custom ppa
RUN add-apt-repository ppa:team-gcc-arm-embedded/ppa && \
  apt-get update && \
  apt-get install -y gcc-arm-embedded
