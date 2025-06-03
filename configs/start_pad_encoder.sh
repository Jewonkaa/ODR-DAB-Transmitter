#!/bin/bash
cd "$(dirname "$0")"
echo "Starting DAB PAD Encoder..."
sudo odr-padenc -o pad_fifo -t dls.txt -d MOT/
#exec bash

