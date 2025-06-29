 
#!/bin/bash

HOST="localhost"
PORT="9090"
ANNOUNCEMENT_NAME="test_alarm"
echo "DAB Transmitter - Announcement Alarm Control Interface"
echo "Connected to ODR-DabMux via telnet on port $PORT."
echo "Type 'on' to activate the alarm, 'off' to deactivate it, or 'exit' to quit."

while true; do
    read -p "> " choice

    case "$choice" in
        on)
            (
                sleep 1
                echo "set $ANNOUNCEMENT_NAME active 1"
                sleep 1
                echo "quit"
            ) | telnet $HOST $PORT > /dev/null
            echo "✅ Alarm activated."
            ;;
        off)
            (
                sleep 1
                echo "set $ANNOUNCEMENT_NAME active 0"
                sleep 1
                echo "quit"
            ) | telnet $HOST $PORT > /dev/null
            echo "⛔ Alarm deactivated."
            ;;
        exit)
            echo "Exiting the program."
            break
            ;;
        *)
            echo "Unknown command. Use: 'on', 'off', or 'exit'."
            ;;
    esac
done
