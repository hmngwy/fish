if type -q pyenv
  set -q PYENV_ROOT; or set -l PYENV_ROOT $HOME/.pyenv
  set PATH $PYENV_ROOT/libexec/pyenv $PYENV_ROOT/libexec $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH 2> /dev/null
  setenv PYENV_SHELL fish

  status --is-interactive; and pyenv init - | source
  status --is-interactive; and pyenv virtualenv-init - | source
end
