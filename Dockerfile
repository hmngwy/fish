FROM ubuntu:20.10

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update; apt-get install -y --no-install-recommends make build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
  git bash software-properties-common ssh sudo

ARG CACHEBUST=1
ADD ./* $HOME
RUN bash .config/bootstrap.sh

RUN bash .config/setup/fish.sh
RUN fish .config/setup/tmux.fish
RUN fish .config/setup/ranger.fish
RUN fish .config/setup/python.fish
RUN fish .config/setup/nodejs.fish
RUN fish .config/setup/neovim.fish
