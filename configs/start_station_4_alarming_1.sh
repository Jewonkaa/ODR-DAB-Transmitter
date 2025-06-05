#!/bin/bash
cd "$(dirname "$0")"
echo "Starting DAB Station 4 (Alarming) step 1..."

sudo ffmpeg -re -stream_loop -1 -i alarm.mp3 -f wav -ar 48000 -ac 2 tcp://127.0.0.1:9005?listen

#exec bash

