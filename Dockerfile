FROM ubuntu:20.04

RUN export DEBIAN_FRONTEND="noninteractive" && \
    apt update && \
    apt-get install -y \
    --no-install-recommends \
    curl \
    ca-certificates && \
    apt-get autoclean && \
    apt-get autoremove;

RUN curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | bash