FROM ubuntu:latest
MAINTAINER Dawid Stec <dawid.stec@gmail.com>
LABEL Description="Docker image for building arm-embedded"

RUN apt-get update && apt-get install -y \
  git \
  subversion \
  cmake \
  make \
  automake \
  python-setuptools \
  ninja-build \
  python-dev \
  libffi-dev \
  libssl-dev \
  libusb-1.0.0 \
  libusb-1.0.0-dev \
  software-properties-common \
  python-software-properties \
  gawk \
  genromfs \
  ccache

# arm-none-eabi custom ppa
RUN add-apt-repository ppa:team-gcc-arm-embedded/ppa && \
  apt-get update && \
  apt-get install -y gcc-arm-embedded
