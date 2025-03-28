#!/bin/bash

echo "Checking if cyclictest is installed..."
if ! command -v cyclictest &> /dev/null; then
    echo "cyclictest not found! Installing rt-tests..."
    sudo apt update && sudo apt install rt-tests -y
else
    echo "cyclictest is already installed."
fi

echo "Running Cyclictest..."
sudo cyclictest -m -n -a 0 -q -h 100 -p 90 -l 100000

