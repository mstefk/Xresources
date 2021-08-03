exec setxkbmap -layout rs,rs -variant latin,  &
xrdb /home/archuser/.Xresources &
exec feh --bg-fill /home/archuser/Pictures/wallpaper &
exec ./dwm_bar.sh 
#STR= $(/home/archuser/Downloads/xkb-switch/build/xkb-switch -W) &
#while true; do
#  xsetroot -name "$(date +'%b/%d/%Y %H:%M')" &
#  #xsetroot -name "$(/home/archuser/Downloads/xkb-switch/build/xkb-switch -W)" &
#  sleep 15
#done
