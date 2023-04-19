day=$1
month=$2

if (( ( $month == 3 && $day >= 20) || ($month == 4) || ($month == 5) || ($month == 6 && $day <= 20) ));
then

  echo "True"

else

  echo "False"

fi
