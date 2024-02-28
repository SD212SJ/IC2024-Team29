#getting the counts for the length of each food group and uniqing each nutrient to get ready to do the average

grep -c '\b1\b' '1new_file.csv' 
grep -c '\b10\b' '1new_file.csv'
grep -c '\b11\b' '1new_file.csv'
grep -c '\b12\b' '1new_file.csv'
grep -c '\b13\b' '1new_file.csv'
grep -c '\b14\b' '1new_file.csv'
grep -c '\b16\b' '1new_file.csv'
grep -c '\b18\b' '1new_file.csv'
grep -c '\b2\b' '1new_file.csv'
grep -c '\b20\b' '1new_file.csv'
grep -c '\b5\b' '1new_file.csv'
grep -c '\b7\b' '1new_file.csv'
grep -c '\b9\b' '1new_file.csv'
echo "by counts there are 366 1s, 9 10s, 144 11s, 84 12s, 62 13s, 53 13s, 65 14s, 4 16s, 50 18s, 60 2s, 96 5s, 39 7s, and 90 9s"

awk -F',' '{print $1 "," $2 "," $NF "," $(NF-1)}' '1new_file.csv' | sort | uniq >> '2new_file.csv'
