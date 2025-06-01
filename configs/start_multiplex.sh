#!/bin/bash
cd "$(dirname "$0")"
echo "Starting DAB Multiplex..."
sudo odr-dabmux dabmux.mux
#exec bash

