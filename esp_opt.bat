#!/bin/bash

if [ "$1" = "build" ] || [ "$1" = "all" ]; then
    west build -b esp32c3_devkitm -p auto project/
fi

if [ "$1" = "flash" ] || [ "$1" = "all" ]; then
    west flash
fi

if [ "$1" = "com" ] || [ "$1" = "all" ]; then
west espressif monitor
fi
