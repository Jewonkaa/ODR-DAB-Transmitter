#!/bin/bash
cd "$(dirname "$0")"
echo "Starting DAB PAD Encoder for station 2..."
sudo odr-padenc -o pad_fifo_2 -t dls.txt -d MOT/


#exec bash

