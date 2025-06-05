#!/bin/bash
cd "$(dirname "$0")"
echo "Starting DAB Station 1 (Rock Antenne)..."
sudo odr-audioenc -v "http://194.97.151.145:80/rockantenne" -r 48000 -c 2  -o "tcp://localhost:9001" -l -b 120 -P pad_fifo_1

#exec bash

