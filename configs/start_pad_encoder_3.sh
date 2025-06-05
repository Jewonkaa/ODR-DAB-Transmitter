#!/bin/bash
cd "$(dirname "$0")"
echo "Starting DAB PAD Encoder for station 3..."
sudo odr-padenc -o pad_fifo_3 -t dls.txt -d MOT/


#exec bash

