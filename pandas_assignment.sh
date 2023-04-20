#!/bin/bash
name="Candice's panda's assignment"
echo $name 
sed 's/Zoo//g' pandas.txt>> pandas_no_zoo.txt
grep "sex" pandas.txt | awk '{print $1,$4,$2}' pandas.txt>> pandas_name_age_sex.txt
sort pandas.txt>> pandas_alpha.txt
sort -k5 pandas.txt>> pandas_zooalpha.txt
sed "s/female/F/" pandas.txt | sed "s/male/M/" >> pandas_MandF.txt
grep -c "female" pandas.txt | grep -cv "October"
nl pandas.txt>> pandas_line_numbers.txt
sed -n '1p;6p;17p' pandas_line_numbers.txt>> pandas_print_numbers.txt
grep -in "X" pandas.txt>> pandas_nox.txt
awk '{print $1,$5}' |sort -k5 | uniq -u pandas.txt>> pandas_location.txt
sort -nk4 pandas.txt>> pandas_age.txt
awk '$4 <=10 {print $1,$4}' pandas_age.txt>> pandas_age_range.txt
