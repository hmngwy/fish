if type -q tmux

    if status is-interactive
    and not set -q TMUX
        exec tmux
    end

end
