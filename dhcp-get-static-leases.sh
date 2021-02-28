#!/bin/sh
for i in $(uci show dhcp | grep -oE "host\[\d+\].ip"|grep -oE '\d+'); do
  printf "$(uci get dhcp.@host[$i].name) $(uci get dhcp.@host[$i].ip) $(uci get dhcp.@host[$i].mac)\n"
done
