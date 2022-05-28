#!/usr/bin/env bash

UPDATES=$(checkupdates 2>/dev/null | wc -l)

get_total_updates() { UPDATES=$(checkupdates 2>/dev/null | wc -l); }

while true; do
    get_total_updates

    # when there are updates available
    # every 10 seconds another check for updates is done
    while (( UPDATES > 0 )); do
        if (( UPDATES == 1 )); then
            echo "$UPDATES"
        elif (( UPDATES > 1 )); then
            echo "$UPDATES"
        else
            echo "0"
        fi
        sleep 10
        get_total_updates
    done

    # when no updates are available, use a longer loop, this saves on CPU
    # and network uptime, only checking once every 30 min for new updates
    while (( UPDATES == 0 )); do
        echo "0"
        sleep 20
        get_total_updates
    done
done
