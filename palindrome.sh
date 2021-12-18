##!/bin/bash -x
read -p "Enter number" n1
isprime=0
ispalindrome=0
palindrome()
{
n=$1
flag=0
sum=0
echo $n
while [ $n -ne 0 ]
do
r=$(( n % 10 ))
dig=$(( sum* 10 ))
sum=$(( dig+r ))
n=$(( n/10 ))
done
if [ $sum -eq $1 ]
then
ispalindrome=1
else
ispalindrome=0
fi
}

prime()
{
n=$1
flag=0
for(( i=2; i<n; i++ ))
do
ans=$(( n%i ))
if [ $ans -eq 0 ]
then
flag=1
break
fi
done
if [ $flag -eq 0 ]
then
isprime=1
else
isprime=0
fi
}

prime $n1
palindrome $n1
echo $ispalindrome
echo $isprime
if [ $ispalindrome -eq 1 -a $isprime -eq 1 ]
then
echo $n1 is prime palindrome
elif [ $isprime -eq 1 ]
then
echo $n1 is prime
elif [ $ispalindrome -eq 1 ]
then
echo $n1 is palindrome
else 
echo not prime nither palindrome $n1
fi
