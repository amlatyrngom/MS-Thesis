raw_file=results/${1}_raw
all_file=results/${1}_all.csv
thres_file=results/${1}_thres.csv

rm $all_file
rm $thres_file

echo "Output, Typename, NumOps, NumCols, Select, FullBitmap, PartialBitmap, SelVec" > $all_file
echo "Output, Typename, NumOps, NumCols, PartialThreshold, SelVecThreshold" > $thres_file

cat $raw_file | grep -i "^Individual" >> $all_file
cat $raw_file | grep -i "^Threshold" >> $thres_file



