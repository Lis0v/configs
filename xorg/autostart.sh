#!/bin/sh
while :
do
	# BATTERY 
	bat=$(cat /sys/class/power_supply/BAT1/capacity)
	batstat=$(cat /sys/class/power_supply/BAT1/status | grep Charging)
	[ -z "$batstat" ] && chargico=$(echo -e '\U26AB') || chargico=$(echo -e '\U1F7E2')
	(( $bat < 5 )) && notify-send "low battery bruv"

	# VOLUME
	volstat=$(amixer | awk NR==5 | sed "s/] \[.*// ; s/.*\[//")
	mute=$(amixer | awk NR==5 | grep off)
	[ -z "$mute" ] && volico=$(echo -e '\U1F50A') || volico=$(echo -e '\U1F507')
	
	# BRIGHTNESS
	bright=$(brightnessctl | awk "NR==2" | sed "s/.*(// ; s/)//")
	brightico=$(echo -e '\U2600')

	# DATE
	date=$(date +"%a %d/%m/%Y | %H:%M:%S ")

	xsetroot -name " $brightico $bright | $volico $volstat | $chargico $bat% | $date"
	sleep 1s
done
