#!/bin/bash
cd "$(dirname "$0")"
echo "Starting DAB Station 2 (Trendy Radio)..."
sudo odr-audioenc -v "http://stream.trendyradio.pl:8000/h" -r 48000 -c 2  -o "tcp://localhost:9002" -l -b 120 -P pad_fifo
#exec bash

