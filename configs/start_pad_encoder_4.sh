#!/bin/bash
cd "$(dirname "$0")"
echo "Starting DAB PAD Encoder for station 4..."
sudo odr-padenc -o pad_fifo_4 -t dls.txt -d MOT/


#exec bash

