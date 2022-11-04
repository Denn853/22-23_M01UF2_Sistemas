#!/bin/bash

echo "Client TURIP"

echo "(1) SEND MSG: HOLI_TURIP"
#read HANDSHAKE IP_ADDRESS | nc localhost 2223
echo "HOLI_TURIP 127.0.0.1" | nc localhost 2223

