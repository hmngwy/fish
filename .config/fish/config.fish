if test -e ~/.asdf/asdf.fish
    source ~/.asdf/asdf.fish
end
if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
end
