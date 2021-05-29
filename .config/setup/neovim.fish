#!/usr/bin/fish
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt install neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugClean +PlugInstall +qall

asdf install python 2.7.13
asdf install python 3.9.3

vf new -p 2.7.13 neovim2
vf new -p 3.9.3 neovim3

vf deactivate

$HOME/.virtualenvs/neovim2/bin/python -m pip install neovim
$HOME/.virtualenvs/neovim3/bin/python -m pip install neovim


