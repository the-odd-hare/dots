xset r rate 350 55 &
compton -b &
xmodmap /home/milosh/.config/Xmodmap &
xrdb -merge /home/milosh/.config/Xresources &
redshift /home/milosh/.config/redshift.conf &
exec bspwm
