#!/bin/bash

# Function to convert base 5 to decimal
base5_to_decimal() {
    base5=$1
    len=${#base5}
    decimal=0
    power=0

    for (( i=$len-1; i>=0; i-- )); do
        digit=${base5:$i:1}

        # Validate digit is between 0 and 4
        if ! [[ "$digit" =~ [0-4] ]]; then
            echo "Error: '$base5' is not a valid base 5 number."
            exit 1
        fi

        decimal=$(( decimal + digit * 5 ** power ))
        power=$(( power + 1 ))
    done

    echo "Decimal: $decimal"
}

# Read input from user
read -p "Enter a base 5 number: " number

# Validate input
if ! [[ "$number" =~ ^[0-4]+$ ]]; then
    echo "Error: Please enter a valid base 5 number (digits 0–4 only)."
    exit 1
fi

# Call function
base5_to_decimal "$number"

