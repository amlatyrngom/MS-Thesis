raw_file=results/${1}_raw
all_file=results/${1}_all.csv

rm $all_file

echo "TypeName, NumOps, NumCols, Select, CompressUpdate, CompressProject" > $all_file

cat $raw_file | grep -i "^ArbitraryFull" >> $all_file

