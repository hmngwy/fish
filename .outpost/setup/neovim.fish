#!/usr/bin/fish
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

asdf install python 2.7.13
asdf install python 3.9.0

vf new -p 2.7.13 neovim2
vf new -p 3.9.0 neovim3
vf deactivate

$HOME/.virtualenvs/neovim2/bin/pip install neovim
$HOME/.virtualenvs/neovim2/bin/pip install pynvim 
$HOME/.virtualenvs/neovim3/bin/pip3.9 install neovim
$HOME/.virtualenvs/neovim3/bin/pip3.9 install pynvim
asdf reshim python

npm install -g neovim
asdf reshim nodejs 

nvim +PlugClean +PlugInstall +qall
