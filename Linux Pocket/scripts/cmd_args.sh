#!/bin/bash

# Expected (part of)
#   ./cmd_args.sh           =>  .. is   .. is
#   ./cmd_args.sh alex      =>  .. alex .. 30
#   ./cmd_args.sh alex 20   =>  .. alex .. 20

echo "---------- ---------- ----------"
echo "Scirpt : '$0'"
echo "---------- ---------- ----------"

AGE=30

echo "My name is $1"

if [ "$2" == "" ]; then
    echo "My  age is $AGE"
else
    echo "My  age is $2"
fi

echo "---------- ---------- ----------"

echo "The args      : $@"
echo "The args' len : $#"

# Just for fun
#   you could test it by `echo $?`
exit 100
