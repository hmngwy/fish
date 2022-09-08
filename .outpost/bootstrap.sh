#!/usr/bin/bash

git clone --bare https://github.com/hmngwy/fish.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
config config --local status.showUntrackedFiles no
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no

config submodule update --init --recursive

fish .outpost/setup/fisher.fish
fish .outpost/setup/locale.fish
fish .outpost/setup/submodules.fish
fish .outpost/setup/asdf.fish
fish .outpost/setup/fzf.fish
fish .outpost/setup/graphql.fish
fish .outpost/setup/neovim.fish
fish .outpost/setup/tmux.fish
fish .outpost/setup/ranger.fish
