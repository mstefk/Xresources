dwm_resources () {
    free_output=$(free -h | grep Mem)
		printf " %s/%s" "$(echo $free_output | awk '{print $3}')" "$(echo $free_output | awk '{print $2}')"
}
dwm_resources