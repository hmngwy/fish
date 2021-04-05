#!/usr/bin/bash
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
fish -c 'curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher'
fish -c 'fisher update'
