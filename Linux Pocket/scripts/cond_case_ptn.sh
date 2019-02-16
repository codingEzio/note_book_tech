#!/bin/bash

# Expected
#   wow             ->  Alright.. no need to cheer LOL
#   [aeiouAEIOU]    ->  Hmm, you know the '$letter' is a voewl!
#   ANYTHING_ELSE   ->  Nah, you're WAY beyond my imagination XD

echo "Just type in some letters OR digits :)"
read letter

case $letter in
wow)
    echo "Alright.. no need to cheer LOL"
    ;;
[aeiouAEIOU])
    echo "Hmm, you know the '$letter' is a voewl!"
    ;;
*)
    echo "Nah, you're WAY beyond my imagination XD"
    ;;
esac
