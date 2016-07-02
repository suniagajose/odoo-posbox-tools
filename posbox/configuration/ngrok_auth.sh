#!/usr/bin/env bash

TOKEN="${1}"
sudo mount -o remount,rw /
sudo ngrok authtoken "${TOKEN}"
sudo mount -o remount,ro /
(sleep 5 && sudo reboot) &
