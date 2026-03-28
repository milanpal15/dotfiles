
#!/bin/bash

STATE_FILE="/tmp/i3blocks_time_state"

# Initialize state (default = time)
if [ ! -f "$STATE_FILE" ]; then
    echo "time" > "$STATE_FILE"
fi

STATE=$(cat "$STATE_FILE")

# Left click toggles mode
if [ "$BLOCK_BUTTON" = "1" ]; then
    if [ "$STATE" = "time" ]; then
        echo "datetime" > "$STATE_FILE"
    else
        echo "time" > "$STATE_FILE"
    fi
    STATE=$(cat "$STATE_FILE")
fi

# Output formatting
if [ "$STATE" = "time" ]; then
    date '+%H:%M'
else
    date '+%a %d %b %Y %H:%M'
fi
