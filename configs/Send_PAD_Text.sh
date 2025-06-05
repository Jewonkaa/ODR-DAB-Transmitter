#!/bin/bash
cd "$(dirname "$0")"

echo "==== PAD DATA TERMINAL ===="
echo "INSERT PAD Text (DLS), which will be sent by DAB Transmitter."
echo "To abort, close terminal (i.e. Ctrl+D or click X)."
echo

while true; do
    read -p "Insert new PAD Text ('ALARM START' to start alarm, 'ALARM STOP' to stop alarm: " input
    if [[ -n "$input" ]]; then
        echo "$input" > dls.txt
        echo "Saved: '$input'"
    else
        echo "Empty line - nothing to be saved."
    fi
done
