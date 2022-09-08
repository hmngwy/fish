if type "xrdb" > /dev/null; then
    xrdb -merge ~/.Xresources
fi
if type "dwmblocks" > /dev/null; then
    dwmblocks > /dev/null 2>&1 & 
fi
if type "xinput" > /dev/null; then
    xinput set-prop 15 'libinput Accel Speed' -.75
fi 
#if type "xbindkeys" > /dev/null; then
#    xbindkeys > /dev/null 2>&1 & 
#fi 
timedatectl set-timezone $(curl -s https://ipapi.co/timezone)
exec dwm
