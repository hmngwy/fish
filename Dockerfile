FROM ubuntu:20.10

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends make build-essential software-properties-common
RUN apt-get install -y --no-install-recommends  libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
RUN apt-get install -y --no-install-recommends git bash ssh sudo wget curl

ENV HOME=/root
WORKDIR $HOME
ARG CACHEBUST=arst

RUN curl -Lks https://git.io/JGZ3D | bash

RUN bash .config/outpost/fish.sh
RUN fish .config/outpost/submodules.fish
RUN fish .config/outpost/tmux.fish
RUN fish .config/outpost/ranger.fish
RUN fish .config/outpost/python.fish
RUN fish .config/outpost/nodejs.fish
RUN fish .config/outpost/neovim.fish

COPY --from=docker:dind /usr/local/bin/docker /usr/local/bin/
