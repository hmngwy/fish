set -x VISUAL nvim
set -x EDITOR "$VISUAL"
set -gx LIBGL_ALWAYS_INDIRECT 1
set -gx DISPLAY $(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
