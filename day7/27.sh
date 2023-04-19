#!/bin/bash

# Initialize an empty array
random_numbers=()

# Generate and store 10 random 3-digit numbers in the array
for i in {1..10}; do
  random_numbers+=($((RANDOM % 900 + 100)))
done

echo "Random numbers: ${random_numbers[*]}"

# Sort the array
sorted_numbers=($(printf "%d\n" "${random_numbers[@]}" | sort -n))

echo "Sorted numbers: ${sorted_numbers[*]}"

# Find the 2nd smallest and 2nd largest numbers
second_smallest=${sorted_numbers[1]}
second_largest=${sorted_numbers[-2]}

echo "2nd Smallest: $second_smallest"
echo "2nd Largest: $second_largest"

