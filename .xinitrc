if ! type "xrdb" > /dev/null; then
    xrdb -merge ~/.Xresources
fi
if ! type "dwmblocks" > /dev/null; then
    dwmblocks > /dev/null 2>&1 & 
fi
exec dwm
