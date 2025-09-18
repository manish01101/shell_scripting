#!/bin/bash 

echo $0 -> return shell type
cat /etc/shells -> return all type of shell
echo "hey manish"
# this is single line comment

<<csdf
this 
is multiline comment
csdf

#variable
name="manish"
echo "my name is $name"

#array
arr=(hello sello sfsdf)
echo ${arr[*]} #return all ele
echo ${arr[0]} #return at index
echo ${#arr[*]} #return len

arr+=( New new1 new2 ) #updating arr
echo ${arr[*]}

# key-value
declare -A mapArr
# Assign values to the associative array
mapArr=(
    [name]="manish"
    [age]="21"
    [city]="bounsi"
)
# Accessing values
echo "Name: ${mapArr[name]}"
echo "Age: ${mapArr[age]}"
echo "City: ${mapArr[city]}"


#string
str="hi my name is Manish"
echo "length: ${#str}"
echo "uppercase: ${str^^}"
echo "lowercase: ${str,,}"
replacestr=${str/hi/hello} #{string/old/new}
echo ${replacestr}
slicestr=${str:4:8}
echo ${slicestr}

#user interaction
read name
echo ${name}
read -p "your name: " kumar
echo ${kumar}

#arithmetic operations
x=5
y=4
let mul=$x*$y # let keyword for expression
echo "$mul"

echo $(($x + $y))

# conditional statement
# if else
read -p "enter marks: " marks 
if [[ $marks -gt 40 ]] # double bracket is for enchanced version
then
    echo "pass"
else
    echo "fail"
fi

read -p "enter marks: " marks
if [[ $marks -ge 80 ]]
then
    echo "firsi div"
elif [[ $marks -ge 60 ]]
then
    echo "second div"
else
    echo "fail"
fi

# switch case
read -p "enter choice: " choice
case $choice in
    a) date;;
    b) ls;;
    *) echo "not a valid input"
esac

# logical operators (&&, ||, !)
read -p "enter age: " age
read -p "enter country: " country
if [[ age -ge 18 ]] && [[ country -eq "india" ]]
then
    echo "you can vote"
else
    echo "you're not allowed"
fi

# for loops
for i in 1 2 3 4 5
do 
    echo "num is $i"
done
for i in {1..6}
do 
    echo "$i"
done

# for loop with file operations
items="a.txt"
for item in $(cat $items)
do
    echo $item
done

myArr=(1 3 5)
len=${#myArr[*]}
for ((i=0; i<$len; i++))
do 
    echo ${myArr[$i]}
done


# while oop
cnt=0
num=10
while [ $cnt -le $num ]
do
    echo "num are $cnt"
    let cnt++
done

# until loop-> run until cond. will true
a=4
until [ $a -eq 1 ]
do
    echo $a
    a=`expr $a - 1`
done

#infinite loop
i=0
while true
do
    echo $i
    i=`expr $i + 1`
    sleep 1s
done

for (( ;; ))
do
    echo "hi"
    sleep 2s
done

# while loop for file operation
while read myVar
do
    echo $myVar
done < a.txt


# to read content from a CSV file (IFS-Internal Field Separator)
while IFS="," read name dept roll
do
    echo $name
    echo $dept
    echo $roll
done < a.csv

cat a.csv | awk 'NR!=1 {print}' | while IFS="," read name dept roll
do
    echo $name
    echo $dept
    echo $roll
done