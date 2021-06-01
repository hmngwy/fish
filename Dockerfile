FROM ubuntu:20.10

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update; apt-get install -y --no-install-recommends make build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
  git bash software-properties-common apt-clone sudo

ARG USER=outpost
ENV HOME=/home/$USER

RUN useradd -rm -d $HOME -p ' ' -s /bin/bash -g root -G sudo -u 1001 $USER
RUN passwd --expire $USER

USER $USER
WORKDIR $HOME

ARG CACHEBUST=1
RUN curl -Lks https://git.io/JGZ3D | /bin/bash

USER root

RUN bash .config/setup/fish.sh
RUN fish .config/setup/tmux.fish
RUN fish .config/setup/ranger.fish
RUN fish .config/setup/python.fish
RUN fish .config/setup/nodejs.fish
RUN fish .config/setup/neovim.fish

RUN chown -R $USER $HOME

CMD /bin/bash
