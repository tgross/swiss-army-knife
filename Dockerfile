# swiss-army-knife container for debugging as side-car
FROM ubuntu:16.04

# add whatever tools you want here
RUN apt-get update \
    && apt-get install -y \
       gdb \
       strace \
       tcpdump \
       software-properties-common \
       apt-transport-https \
       ca-certificates \
       curl \
       jq \
    && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository "deb [trusted=yes] https://repo.iovisor.org/apt/xenial xenial-nightly main" \
    && apt-get update \
    && apt-get install -y --allow-unauthenticated bcc-tools \
    && rm -rf /var/lib/apt/lists/*
