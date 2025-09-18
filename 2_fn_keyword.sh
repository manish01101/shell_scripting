# !/bin/bash
function welcomeNote {
  echo "------"
  echo "Welcome"
  echo "------"
}
welcomeNote1() {
  echo "------"
  echo "Welcome 1"
  echo "------"
}
welcomeNote #fn call
welcomeNote1

addition() {
  local num1=$1 # first parameter
  local num2=$2
  let sum=$num1+$num2
  echo "sum of $num1 and $num2 is $sum"
}
addition 5 9 #passing args

# $# -> no. of args
# $@ -> display all args
# $1 $2 -> use or display a argument

echo $0 $1 $2 

for arg in $@
do 
  echo "ars is $arg"
done 

#shifting of args
echo "creating user"
echo "username is $1"
shift 
echo "description is $@" # rest of the args is desc

# break keyword
for i in 1 2 3 4 5
do 
  if [[ $i -eq 3 ]]
  then
    echo "3 is found"
    break
  fi
  echo "num is $i"
done

# continue keyword
for i in {1..10}
do 
  let r=$i%2
  if [[ $r -eq 0 ]]
  then 
    continue
  fi
  echo "Odd no. is $i" 
done 

# sleep keyword
echo "wait for 2s"
sleep 2s
echo "hi how are u"

# exit keyword -> stop script
if [[ $# -eq 0 ]]
then 
  echo "please provide atleast one argument"
  exit 1
fi

# exit status i.e $? -> gives status of prev command if that was successful
read -p "which site you want to check? " site
ping -c 1 $site
if [[ $? -eq 0 ]]
then 
  echo "successfully connected to $site"
else 
  echo "Unable to connect $site"
fi 

# basename -> strip directory info and only give filename
# dirname -> strip the filename and gives directory path
# realpath -> gives full path for a file

# check if file/dir exist
# if [ -d folder_name ]
# if [ ! -d folder_name ]
# if [ -f file_name ]
# if [ ! -f file_name ]

filepath="/Users/manish/code/shell_scripting/test.txt"
if [[ -f $filepath ]]
then 
  echo "file exist"
else
  echo "file not exist"
  touch $filepath
  echo "file created successfully"
fi