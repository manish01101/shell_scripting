#!/bin/bash

## Arrayy
# myArray=(1 2 3 ");
# echo ${myArray[1]}
# echo ${myArray}
# echo ${myArray[0]}
# echo ${myArray[@]}


## string
# str="Hello world ";
# echo "String is $str and length is : ${#str}"

# echo "Upper Case is : ${str^^}"
# echo "Lower Case is : ${str,,}"


## user input
# read -p "enter num: " n
# echo "num is :" $n


## arithmetic
# x=10
# y=2
# let mul=$x*$y
# echo $mul



## if else
# read -p "Enter Your marks : " mark

# if [[ $mark -ge 80 ]]
# then 
# 	echo "You got 1st Division"
# elif [[ $mark -ge 60 ]]
# then 
# 	echo "You got 2nd division"

# elif [[ $mark -ge 40 ]] 
# then
# 	echo "You passed"
# else  
# 	echo "You Failed"
# fi

# echo $0



## case based condition
# echo "Provide an Option"
# echo "a - Print date"
# echo "b - For list of scripts"
# echo "c to check current locations"

# read -p "Enter Your choice : " choice

# case $choice in 
# 	a)date;;
# 	b)ls;;
# 	c)pwd;;
# esac



## for loop
# for i in 1 2 3 4 5 6 7 8 9 10 
# do 
# 	echo "Number is $i"
# done

# for i in {1..6};
# do
#   echo "number is $i"
# done

# for ((i=1; i<=10; i++))
# do
# 	echo "Counter $i"
# done


# echo "Date ----> Greetings --->> "
# h=$(date +%H)
# if [[ h -lt 12 ]]
# then
# 	echo "Good Morning Sir"
# elif [[ h -le 15 ]]
# then
# 	echo "Good AfterNoon Sir"
# else 
# 	echo "Good Evening Sir"
# fi


## comment
# single line comment 
<<comment 
...
Another comment
...
comment