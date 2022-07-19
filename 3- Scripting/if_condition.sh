# if condition statement

echo "Please enter your price"
read price

if [ $price == 2000 ]

then
echo "The price is good for the business"
echo "Please deliver the product"

fi
 

Exple-2 :
========

echo "Please enter your pin"
read pin 
if [ $pin -eq 5470 ]
then 
echo 'You entered a valid pin'
echo 'Welcome to TD, how can we help you'
else 
echo "Sorry, your pin is invalid. Please contact a branch."
fi 


Exple-3 :
=======

#!/bin/bash
echo "Please enter a number"
read num1
echo "Please enter another number"
read num2
if [ $num1 == $num2 ]
then
echo "$num1 is equals to $num2"
else
echo "$num1 is not equal to $num2"
fi


Exple-4 : if else elif condition
========
#!/bin/bash

echo "enter the offer price of customer1"
read price1

echo "enter the offer price of customer2"
read price2

if [ $price1 -ge $price2 ]
then

echo "$price1 is greater than $price2"
echo "Sell to customer1"

elif [  $price1 -lt $price2 ]
then

echo "$price1 is less than $price2"
echo "Sell to customer2 who is offering a better deal"

else
echo "$price1 is equal to $price2"
echo "Request for an increase and choose the best possible offer"

fi


