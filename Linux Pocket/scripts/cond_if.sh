#!/bin/bash

# Expected
#   You are root
#       Nope, you are not the man I'm looking for.
#       You're 'root'!!
#   You are alex
#       Who are you, for real?!
#       Hmm.. Fancy name though :P
#   You are not any of those
#       This is the end, ha!

# A simple 'if else'
if [ $(whoami) = "root" ]; then
    echo "Nope, you are not the man I'm looking for."
else
    echo "Who are you, for real?!"
fi

# A bit more complicated one
#     if [ COND ]; then ..
#   elif [ COND ]; then ..
#   elif [ COND ]; then ..
#   else ..
if [ $(whoami) = "root" ]; then
    echo "You're 'root'!!"
elif [ $(whoami) = "alex" ]; then
    echo "Hmm.. Fancy name though :P"
elif [ "$USER" = "alex" ]; then
    echo "A fancy name, still :P"
else
    echo "This is the end, ha!"
fi
