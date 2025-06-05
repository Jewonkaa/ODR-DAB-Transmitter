#!/bin/bash
cd "$(dirname "$0")"
echo "Starting DAB PAD Encoder for station 1..."
sudo odr-padenc -o pad_fifo_1 -t dls.txt -d MOT/


#exec bash

