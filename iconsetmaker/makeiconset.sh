#/bin/bash
COUNT=0;
mkdir icon
NUMBER=("20" "40" "60" "29" "58" "87" "40" "80" "120" "120" "180" "76" "152" "167" )
for i in `cat list.txt`;
do
  convert -resize ${NUMBER[COUNT]}x${NUMBER[COUNT]} -unsharp 2x1.4+1.0+0.04 -colors 256 -quality 100  -verbose $1 icon/$i
  let COUNT++
done

