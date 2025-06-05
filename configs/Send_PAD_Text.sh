#!/bin/bash
cd "$(dirname "$0")"

echo "========= PAD DLS DATA TERMINAL ========="
echo "INSERT DLS Text, which will be sent by DAB Transmitter. Max 127 characters."
echo "To abort, close terminal (i.e. Ctrl+D or click X)."
echo

while true; do
    read -p "Insert new DLS Text ('ALARM START' to start alarm, 'ALARM STOP' to stop alarm): " input
    if [[ -n "$input" ]]; then
        echo "$input" > dls.txt
        echo "Saved: '$input'"
    else
        echo "Empty line - nothing to be saved."
    fi
done
