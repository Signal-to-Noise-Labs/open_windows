#!/bin/sh


now=$(date +"%H")

if [ "$now" -ge 7 -a "$now" -le 22 ]
	then
	killall fcserver
	killall java
	#launch fcsever
	/home/jeff/Desktop/fcserver/fcserver /home/jeff/Desktop/fcserver/A.json &
	/home/jeff/Desktop/fcserver/fcserver /home/jeff/Desktop/fcserver/B.json &
	#launch sketches
	/home/jeff/Desktop/dia/masterA/application.linux64/masterA &
	/home/jeff/Desktop/dia/masterB/application.linux64/masterB
elif [ "$now" -ge 23 ]
	then
	killall fcserver
	killall java
	#launch fcsever
	/home/jeff/Desktop/fcserver/fcserver /home/jeff/Desktop/fcserver/A.json &
	/home/jeff/Desktop/fcserver/fcserver /home/jeff/Desktop/fcserver/B.json &
	#todo
	#launch go-dark sketches or clear fadecandy
	/home/jeff/Desktop/dia/masterA/application.linux64/masterA &
	/home/jeff/Desktop/dia/masterB/application.linux64/masterB &
	#kill everthing
	killall fcserver
	killall java
else
	killall fcserver
	killall java
fi