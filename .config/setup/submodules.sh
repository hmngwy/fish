# install submodules
dot submodule update --init --recursive

# setup submodules
cd $HOME/.asdf/; git checkout "$(git describe --abbrev=0 --tags)"
mkdir -p $HOME/.config/fish/completions; ln -s $HOME/.asdf/completions/asdf.fish $HOME/.config/fish/completions
$HOME/.fzf/install --all
