raw_file=results/${1}_raw
all_file=results/${1}_all.csv

rm $all_file

echo "Typename, NumOps, Select, Compress" > $all_file

cat $raw_file | grep -i "^Arbitrary" >> $all_file

