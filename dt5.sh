#!/bin/bash

# Function to convert decimal to base 5
decimal_to_base5() {
    decimal=$1
    base5=""

    if [ "$decimal" -eq 0 ]; then
        echo "Base 5: 0"
        return
    fi

    while [ "$decimal" -gt 0 ]; do
        remainder=$(( decimal % 5 ))
        base5="$remainder$base5"
        decimal=$(( decimal / 5 ))
    done

    echo "Base 5: $base5"
}

# Read input from user
read -p "Enter a decimal number: " number

# Validate input
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid non-negative integer."
    exit 1
fi

# Call function
decimal_to_base5 "$number"

