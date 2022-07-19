# Exple 1 for loop

echo "for loop starts"

for  (( a=1;a<=6;a++ ))

do

        echo $a

done

echo "for loop ends"



# Exple 2 while loop


echo "while loop demo starts..."

i=1

while [ $i -le 5 ]

do

        echo $i

i=`expr $i + 1`

done

echo " While loop is over"