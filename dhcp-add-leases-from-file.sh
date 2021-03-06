#!/bin/sh
while read line; do
  ./dhcp-add-static-host-lease.sh $line
done
