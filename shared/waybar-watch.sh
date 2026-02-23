#!/bin/bash
while true; do
    waybar &
    wait $!
    sleep 2
done
