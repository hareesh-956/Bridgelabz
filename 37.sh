# Function to check if a number is prime
is_prime() {
    num=$1
    if [ $num -le 1 ]; then
        echo 0
        return
    fi

    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            echo 0
            return
        fi
    done
    echo 1
}

# Read the input number
read -p "Enter a number: " n

# Initialize an empty array to store prime factors
prime_factors=()

# Find the prime factors of the input number and store them in the array
while [ $(is_prime $n) -eq 0 ]; do
    for ((i=2; i<=n; i++)); do
        if [ $((n % i)) -eq 0 ] && [ $(is_prime $i) -eq 1 ]; then
            prime_factors+=($i)
            n=$((n / i))
            break
        fi
    done
done

# If the remaining number is greater than 1, add it to the prime factors
if [ $n -gt 1 ]; then
    prime_factors+=($n)
fi

# Display the prime factors
echo "Prime factors: ${prime_factors[@]}"

