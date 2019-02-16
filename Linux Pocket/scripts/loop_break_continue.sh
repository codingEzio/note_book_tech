#!/bin/bash

echo "---------- ---------- ----------"

for num in 1 2 3 4 5; do
    echo $num
    if [ "$num" = 2 ]; then
        continue
    else
        echo "Nope"
    fi
done

echo "---------- ---------- ----------"

for num in 1 2 3 4 5; do
    echo $num
    if [ "$num" = 4 ]; then
        break
    else
        echo "Yeah"
    fi
done
