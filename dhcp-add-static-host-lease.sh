#!/bin/sh
if [ $# -eq 3 ]
  then
    echo "name=$1 ip=$2 mac=$3"
  else
    echo "Fehler: Bitte name ip und mac angeben."
    exit
fi
uci add dhcp host
uci set dhcp.@host[-1].name=$1
uci set dhcp.@host[-1].ip=$2
uci set dhcp.@host[-1].mac=$3

