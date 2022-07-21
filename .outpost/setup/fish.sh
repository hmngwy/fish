#!/usr/bin/bash
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish
fish -c 'curl -sL https://git.io/fisher | source && fisher update'
