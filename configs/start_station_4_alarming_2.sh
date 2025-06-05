#!/bin/bash
cd "$(dirname "$0")"
echo "Starting DAB Station 4 (Alarming) step 2..."

sudo odr-audioenc -v "tcp://127.0.0.1:9005" -r 48000 -c 2 -o "tcp://localhost:9004" -l -b 120 -P pad_fifo_4
#exec bash

