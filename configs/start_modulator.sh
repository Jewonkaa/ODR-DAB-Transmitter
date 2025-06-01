#!/bin/bash
cd "$(dirname "$0")"
echo "Starting DAB Modulator..."
sudo odr-dabmod dabmod.ini
#exec bash

