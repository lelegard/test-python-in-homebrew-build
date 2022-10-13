#!/usr/bin/env bash

HBP=
for prefix in /opt/homebrew /usr/local /home/linuxbrew/.linuxbrew; do
    if [[ -e $prefix/bin/brew ]]; then
        HBP=$prefix
        break
    fi
done

echo "=== Homebrew prefix: $HBP"
echo "=== Python in $HBP/bin:"
ls -l $HBP/bin/python*

echo "=== Which python:"
which python
which python3

echo "=== Python from command line:"
python --version

echo "=== Python script"
[[ -e ./test.py ]] && ./test.py

echo "=== Python3 script"
[[ -e ./test3.py ]] && ./test3.py

exit 0
