set -x VISUAL nvim
set -x EDITOR "$VISUAL"
set -gx LIBGL_ALWAYS_INDIRECT 1
set -gx DISPLAY :0.0
# force surf to use x11
set -gx GDK_BACKEND x11
