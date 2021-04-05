#!/usr/bin/bash
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt install neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugClean +PlugInstall +qall

bash ./pyenv.sh

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pyenv install 2.7.13
pyenv install 3.9.3

pyenv virtualenv 2.7.13 neovim2
pyenv virtualenv 3.9.3 neovim3

pyenv activate neovim2
pip install neovim

pyenv activate neovim3
pip install neovim

pyenv deactivate

pip install black
