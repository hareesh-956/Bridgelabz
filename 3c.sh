
if [ $# -eq 0 ]; then
  echo "Please provide a year as input."
  exit 1
fi

year=$1

if ! [[ $year =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter a valid year."
  exit 1
fi

if (($year%4==0)); then
  if (($year%100==0)); then
    if (($year%400==0)); then
      echo "$year is a leap year"
    else
      echo "$year is not a leap year"
    fi
  else
    echo "$year is a leap year"
  fi
else
  echo "$year is not a leap year"
fi
