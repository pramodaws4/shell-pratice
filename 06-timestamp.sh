#!/bin/bash

TIMESTAMP=$(date +%s)
echo "Current date and time: $TIMESTAMP"

sleep 15

END_TIME=$(date +%s)
TOTAL_TIME=$(($END_TIME - $TIMESTAMP))
echo "Total time elapsed: $TOTAL_TIME seconds"

echo "This script was executed on: $END_TIME "

