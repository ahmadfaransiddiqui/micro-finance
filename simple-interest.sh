#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "Simple Interest: $interest"
}

# Input values
read -p "Enter principal amount: " principal
read -p "Enter rate of interest: " rate
read -p "Enter time (in years): " time

# Validate input (you can add more validation as needed)
if [[ ! $principal =~ ^[0-9]+(\.[0-9]+)?$ || ! $rate =~ ^[0-9]+(\.[0-9]+)?$ || ! $time =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter valid numerical values."
    exit 1
fi

# Calculate and display simple interest
calculate_simple_interest "$principal" "$rate" "$time"
