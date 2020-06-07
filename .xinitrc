xset r rate 350 60 &
xmodmap /home/milosh/.config/Xmodmap &
xrdb -merge /home/milosh/.config/Xresources &
redshift /home/milosh/.config/redshift.conf &
exec bspwm
