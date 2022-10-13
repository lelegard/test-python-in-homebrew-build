#!/usr/bin/env bash

HBP=$(brew --prefix)
echo "=== Homebrew prefix: $HBP"
echo "=== Python in $HBP/bin:"
ls -l $HBP/bin/python*
echo "=== Which python:"
which python
which python3
echo "=== Python from command line:"
python --version
echo "=== Python script"
./test.py
echo "=== Python3 script"
./test3.py

exit 0
