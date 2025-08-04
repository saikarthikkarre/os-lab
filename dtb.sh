#!/bin/bash

# Function to convert decimal to binary
decimal_to_binary() {
    decimal=$1
    binary=""

    if [ "$decimal" -eq 0 ]; then
        echo "Binary: 0"
        return
    fi

    while [ "$decimal" -gt 0 ]; do
        remainder=$(( decimal % 2 ))
        binary="$remainder$binary"
        decimal=$(( decimal / 2 ))
    done

    echo "Binary: $binary"
}

# Read input from user
read -p "Enter a decimal number: " number

# Validate input is a non-negative integer
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid non-negative integer."
    exit 1
fi

# Call function
decimal_to_binary "$number"

