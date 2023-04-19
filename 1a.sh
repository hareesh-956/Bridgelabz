val1=$(( RANDOM % 100 + 1 ))
val2=$(( RANDOM % 100 + 2 ))
val3=$(( RANDOM % 100 + 3 ))
val4=$(( RANDOM % 100 + 4 ))
val5=$(( RANDOM % 100 + 5 ))

echo "Generated values: $val1 $val2 $val3 $val4 $val5"

min_val=$val1
if [ $val2 -lt $min_val ]; then
  min_val=$val2
fi
if [ $val3 -lt $min_val ]; then
  min_val=$val3
fi
if [ $val4 -lt $min_val ]; then
  min_val=$val4
fi
if [ $val5 -lt $min_val ]; then
  min_val=$val5
fi

max_val=$val1
if [ $val2 -gt $max_val ]; then
  max_val=$val2
fi
if [ $val3 -gt $max_val ]; then
  max_val=$val3
fi
if [ $val4 -gt $max_val ]; then
  max_val=$val4
fi
if [ $val5 -gt $max_val ]; then
  max_val=$va15
fi
