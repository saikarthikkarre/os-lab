#!/bin/bash

# Function to check if a number is an Armstrong number
is_armstrong() {
    num=$1
    original=$num
    n=${#num}  # number of digits
    sum=0

    while [ $num -gt 0 ]; do
        digit=$(( num % 10 ))
        digit_powered=$(echo "$digit^$n" | bc)
        sum=$(( sum + digit_powered ))
        num=$(( num / 10 ))
    done

    if [ "$sum" -eq "$original" ]; then
        echo "$original is an Armstrong number."
    else
        echo "$original is not an Armstrong number."
    fi
}

# Read input from user
read -p "Enter a number: " number

# Call function
is_armstrong "$number"

