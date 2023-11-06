#!/bin/bash

# classement_lieux.sh

YEAR=$1
MONTH=$2
NUMBER=$3

if [ "$YEAR" == "*" ]; then
    YEAR="*"
fi

if [ "$MONTH" == "*" ]; then
    MONTH="*"
fi

cat ./$YEAR_$MONTH_* | grep location | cut -f 3 | sort | uniq -c | sort -nr | head -n $NUMBER
