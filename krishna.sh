date=$(date +%Y-%m-%d)
for logfile in *.log
do
mkdir "${logfile%.*}"
cp "$logfile" "${logfile%.*}/${logfile%.*}-$date.log"
done

