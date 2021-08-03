#!/bin/sh

# A modular status bar for dwm
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: xorg-xsetroot xkb-switch pamixer
df_check_location='/home'
dwm_date () {
        printf " %s " "$(date +"%b/%d/%Y %H:%M")"
}
dwm_keyboard () {
if [ $(xkb-switch) = "rs(latin)" ];then
    printf " ⌨ %s" "rs"
elif [ $(xkb-switch) = "rs" ];then
    printf " ⌨ %s" "рс"
else
    printf " ⌨ %s" "$(xkb-switch)"
fi
}
dwm_pulse () {
    VOL=$(pamixer --get-volume)
        if [ "$VOL" = "muted" ] || [ "$VOL" -eq 0 ]; then
            printf " 🔇"
        elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
            printf " 🔈 %s%%" "$VOL"
        elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
            printf " 🔉 %s%%" "$VOL"
        else
            printf " 🔊 %s%%" "$VOL"
        fi

}
dwm_resources () {
    free_output=$(free -h | grep Mem)
	df_output=$(df -h $df_check_location | tail -n 1)
	MEMUSED=$(echo $free_output | awk '{print $3}')
	MEMTOT=$(echo $free_output | awk '{print $2}')
		printf " %s/%s" "$MEMUSED" "$MEMTOT"
}


while true
do
    upperbar=""
#    upperbar="$upperbar$(dwm_mpc)"
    upperbar="$upperbar$(dwm_resources)"
    upperbar="$upperbar$(dwm_pulse)"
    upperbar="$upperbar$(dwm_keyboard)"
    upperbar="$upperbar$(dwm_date)"
    xsetroot -name "$upperbar"
    sleep 15
done
