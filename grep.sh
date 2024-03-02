
#1. filtering out the data 

#cut -d',' -f3,5 'FF_SR_ data.csv' > filtered.csv
#sed -e 's/,,,,,,,,,,,,,,,,,,//g' filtered.csv > new_filtered.csv
#grep -e ',1,".*2019' "FF_SR_ data.csv" > data.csv
#grep -e '\b.*/20[0-9]{2}' new_filtered.csv 

#grep -e '16158,16158,16,"Hummus, commercial' 'FF_SR_ data.csv' > sample.csv

grep -E -i 'Vitamin A' 'filtered.csv' > new_filtered.csv
grep -E -i 'Vitamin D' 'filtered.csv' >> new_filtered.csv
grep -E -i 'Vitamin B' 'filtered.csv' >> new_filtered.csv
grep -E -i 'calcium' 'filtered.csv' >> new_filtered.csv
grep -E -i 'iron' 'filtered.csv' >> new_filtered.csv
grep -E -i 'zinc' 'filtered.csv' >> new_filtered.csv



