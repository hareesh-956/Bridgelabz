start=0
end=100

repeated_digits=()

for ((num=$start; num<=$end; num++))
do
    
    num_str="$num"
    
    for ((i=0; i<${#num_str}; i++))
    do
        digit="${num_str:$i:1}"
        if [[ $(grep -o $digit <<< $num_str | wc -l) -eq 2 ]]
        then
            # If a digit is repeated twice, add it to the array
            repeated_digits+=($num)
            break
        fi
    done
done

echo "The digits repeated twice in the range $start to $end are: ${repeated_digits[*]}"
