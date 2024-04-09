xrandr &
xcompmgr -nC &
xrdb -load .Xresources &
slstatus &
#feh --bg-fill ~/Pictures/wallpaper/GentooChan.png & # Gentoo-Chan background
feh --bg-scale ~/Pictures/wallpaper/gentoofuni.png &
exec dbus-launch --sh-syntax --exit-with-session dwm > ~/.dwm.log
