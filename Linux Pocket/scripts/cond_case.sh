#!/bin/bash

# Expected
#   python          -> Related book
#   cpp             -> Related book
#   vuejs           -> Related book
#   ANYTHING_ELSE   -> Related book

echo "What programming languages you wanna learn today?"
read prog_lang

case "$prog_lang" in
python)
    echo "Okay, how about <Serious Python>?"
    ;;
cpp)
    echo "Hmm, I suggest this one <Beginning C++17>."
    ;;
vuejs)
    echo "This one is quite nice: <Vue.js Up and Running>"
    ;;
*)
    echo "Ah I don't have any other recommendations :("
    echo "But um.. you could add it by youself, though :P"
    ;;
esac
