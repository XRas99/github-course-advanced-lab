#! /bin/bash

# getting a user to enter the first number, and then storing it
echo -n "Enter an integer: "
read n1

# getting a user to enter the second number, and then storing it
echo -n "Enter another integer: "
read n2

# setting up the sum and multiplication functions for the stored variables
sum=$(($n1+n2))
product=$(($n1*$n2))

# returning the answers to the user
echo "The sum of $n1 and $n2 is $sum"
echo "The product of $n1 and $n2 is $product"

# if condition to check if the sum is greater than, less than, or equal to the product
if [ $sum -lt $product ]; 
then
    echo "The sum is less than the product"
elif [[ $sum -eq $product ]]; 
then
    echo "The sum is equal to the product"
elif [ $sum -gt $product ]; 
then
    echo "The sum is greater than the product"
fi
