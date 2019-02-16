#!/bin/bash

echo "---------- ---------- ----------"

for ((i_for = 0; i_for < 3; i_for++)); do
    echo "num = $i_for  (for)"
done

echo "---------- ---------- ----------"

for prog_lang in C++ Python Rust PHP Node.js; do
    echo "Lang   : $prog_lang"
done

for script_in_current_folder in *.sh; do
    echo "Script : $script_in_current_folder"
done
