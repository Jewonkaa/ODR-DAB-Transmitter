#!/bin/bash
cd "$(dirname "$0")"
echo "Starting DAB Station 3 (1Mix Radio - Trance)..."
sudo odr-audioenc -v "http://fr4.1mix.co.uk:8000/320" -r 48000 -c 2  -o "tcp://localhost:9003" -l -b 120 -P pad_fifo_3
#exec bash

