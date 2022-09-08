#!/usr/bin/bash

cd $HOME 
sudo pacman -Syu git

git clone --bare https://github.com/hmngwy/fish.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

sudo pacman -S - < .outpost/packages.list

mkdir -p .config-backup
config checkout
config config --local status.showUntrackedFiles no
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config submodule update --init --recursive

( cd .outpost/cli/yay; makepkg -si)

sudo yay -S - < .outpost/aur.list

fish .outpost/setup/fisher.fish
fish .outpost/setup/asdf.fish
fish .outpost/setup/fzf.fish
fish .outpost/setup/graphql.fish
fish .outpost/setup/neovim.fish
fish .outpost/setup/ranger.fish
