rm -Rf temp.*
cp serbian.foma temp.serbian.foma
echo -e "\n\nsave stack serbian.bin\nexit" >> temp.serbian.foma
./foma/foma -l temp.serbian.foma

cat sample_input.txt | awk '{print $1}' | ./foma/flookup serbian.bin > sample_output.txt

cat sample_output.txt

rm -Rf temp.*
rm serbian.bin