#!/bin/bash

clear

PORT="2223"

echo "Server > Transfer Unite Recursive International Protocol: TURIP"


echo "(0) LISTEN: Handshake"

MSG=`nc -l $PORT`

HANDSHAKE=`echo $MSG | cut -d " " -f 1`
IP_CLIENT=`echo $MSG | cut -d " " -f 2`


echo "(3) RESPONSE: Handshake Comprovation"

if [ "$HANDSHAKE" != "HOLI_TURIP" ]
then
	echo "ERROR 1: Incorrect Handshake"

	echo "KO_TURIP" | nc $IP_CLIENT $PORT

	exit 1
fi

#echo "OK_TURIP" | nc $IP_CLIENT $PORT


echo "(4) LISTEN: FILE_NAME"

MSG=`nc -l $PORT`

PREFIX=`echo $MSG | cut -d " " -f 1`
FILE_NAME=`echo $MSG | cut -d " " -f 2`


echo "(7) SEND: FILE_NAME Comprovation"
if [ "$PREFIX" != "FILE_NAME" ]
then
	echo "ERROR 2: File Name is Incorrect"

	echo "KO_FILE_NAME" | nc $IP_CLIENT $PORT

	exit 2
fi

#echo "OK_FILE_NAME" | nc $IP_CLIENT $PORT



exit 0
