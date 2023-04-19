
random_numbers=()

for i in {1..10}; do
  random_numbers+=($((RANDOM % 900 + 100)))
done

echo "Random numbers: ${random_numbers[*]}"

sorted_numbers=($(printf "%d\n" "${random_numbers[@]}" | sort -n))

echo "Sorted numbers: ${sorted_numbers[*]}"

second_smallest=${sorted_numbers[1]}
second_largest=${sorted_numbers[-2]}

echo "2nd Smallest: $second_smallest"
echo "2nd Largest: $second_largest"
