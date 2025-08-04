#!/bin/bash

# Function to check if a number is prime
is_prime() {
    num=$1

    if [ "$num" -lt 2 ]; then
        echo "$num is not a prime number."
        return
    fi

    for (( i=2; i*i<=num; i++ ))
    do
        if (( num % i == 0 )); then
            echo "$num is not a prime number."
            return
        fi
    done

    echo "$num is a prime number."
}

# Read input from user
read -p "Enter a number: " number

# Call function
is_prime "$number"

