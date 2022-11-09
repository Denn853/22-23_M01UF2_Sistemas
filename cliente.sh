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
echo "FILE_NAME vaca.vaca" | nc $SERVER_ADDR $PORT


echo "(6) LISTEN: FILE_NAME Comprobation"
MSG=`nc -l $PORT



exit 0`
