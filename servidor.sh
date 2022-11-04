#!/bin/bash

echo "Server > Transfer Unite Recursive International Protocol: TURIP"

echo "(0) LISTEN"
HANDSHAKE=`nc -l 2223` | cut -d " " -f 1
IP=`nc -l 2223` | cut -d " " -f 2

if [ "$HANDSHAKE" != "HOLI_TURIP" ]
then
	echo "ERROR 1: Handshake incorrecto"
	exit 1
fi

echo "(2) RESPONSE"
