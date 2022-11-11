#!/bin/bash

clear

PORT="2223"
SERVER_ADDR="localhost"

echo "Client TURIP"


echo "(1) SEND: Handshake HOLI_TURIP"

#read HANDSHAKE IP_ADDRESS | nc $SERVER_ADDR $PORT
echo "HOLI_TURIP 127.0.0.1" | nc $SERVER_ADDR $PORT


echo "(2) LISTEN: Handshake Comprovation"
MSG=`nc -l $PORT`

echo $MSG

if [ "$MSG" != "OK_TURIP"  ]
then
	echo "ERROR 1: Incorrect Handshake"

	exit 1
fi


echo "(5) SEND: FILE_NAME"

FILE_NAME="vaca.vaca"

echo "FILE_NAME $FILE_NAME" | nc $SERVER_ADDR $PORT


echo "(6) LISTEN: FILE_NAME Comprobation"
MSG=`nc -l $PORT`

if [ "$MSG" != "OK_FILE_NAME"  ]
then
	echo "ERROR 2: Incorrect File Name"
	
	exit 2
fi


echo "(9) SEND: Vaca Dates"

cat vacas/$FILE_NAME | nc $SERVER_ADDR $PORT


exit 0
