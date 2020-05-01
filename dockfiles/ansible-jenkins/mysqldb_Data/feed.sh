#!/bin/bash
counter=0
while [ $counter -lt 50 ]; do
   let counter=counter+1

   firstname=$(nl names.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $1}')
   lastname=$(nl names.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $2}')
   age=$(shuf -i 20-30 -n 1)
   echo "$firstname $lastname"
   mysql -u root -padmin people -e "insert into register values ($counter, '$firstname', '$lastname', $age)"
done
