#!/bin/bash


	read -p $'\e[1;31mConnect to a Network?: \e[0m' input
if [ $input = "yes" ] || [ $input = "y" ]
then
	clear
	read -p $'\e[1;31mNetwork?: \e[0m' network
	echo -en '\n'
	read -p $'\e[1;31mPassword?: \e[0m' pass
	echo -en '\n'
	sudo nmcli dev wifi connect $network password $pass
elif [ $input = "no" ] || [ $input = "n" ]
then
	echo "exiting"
fi
