#!/bin/sh
PORT_ID=$(/usr/bin/touchosc2midi list ports 2>&1 | grep touchosc | head -n 1 | egrep -o "\s+[0-9]+: " | egrep -o "[0-9]+")
exec /usr/bin/touchosc2midi --midi-in=$PORT_ID --midi-out=$PORT_ID
