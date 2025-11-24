#!/bin/bash
echo "Hello World";

name="Jayendra"
age=22
host=$(hostname)

echo "name is $name and age is $age"
echo "Hostname is $host"

readonly country="India"
country="US"

#take input from user

echo "What is your name"
read name

read -p "what is your age" age
echo "Name is $name and age is $age"


#conditional if else

if [ $age -gt 18 ]
then
     echo "You can vote"
else 
     echo "you cannot vote"
fi


read -p "enter country" country
#elif 

if [ $country = "India" ]
then
     echo "you are indian"
elif  [ $country = "Nepal" ]
then
     echo "you are from Nepal"
else 
      echo "you are from earth"
fi


<<mywords
...
lkjdsflkdsjf

dsfdf

mywords

#check if file or folder exist

#if [ -d folder_name ] if folder exist
#   [ ! -d folder_name ] if folder not exist

#if[ -f file_name ] if file exist
#if [ ! -f file_name ] if File not exist

if [ -d "myfolder" ]
then 
echo "folder exist"
else
echo "not exist"
fi 

#switch case 

echo "Hey choose an option"
echo "a= To See the current date"
echo "b= list of all files in current dir"

read choice

case $choice in 
    a) date;;
    b) ls;;
    *) echo "Non valid input"
esac

#for loop

for i in 1 2 3 4 5 6
do 
     echo "number is $i"
done

#other ways 

for j in Raju Sham Baburao
do
   echo "$j"
done

for p in $(seq 1 20)
do 
  echo "$p"
done

#iterate values from file 
items="/home/csed/Desktop/file.txt"

for item in $(cat $items)
do 
    echo $item
done

# While loop
count=0 
num=10

while [ $count -le $num ]
do 
    echo "Numbers are $count"  
    count=$((count+1))  
done

#let count++

#until loop (loop run until condition is false(opposite of while))

a=10

until [ $a -eq 1]
do 
   echo $a
   a=$((a-1))
done 

#break Continue 

for i in 1 2 3
do   
   echo $i
   continue 
   echo "Remaining steps"
done

while true
do 
    echo "breaking while loop"
    break 
done 

#let command

a=10 

let a++
let a=a+20
echo $a


#command line arguments
#!/bin/bash
    echo "Script name: $0"
    echo "First argument: $1"
    echo "Second argument: $2"
    echo "Total arguments: $#"
    echo "All arguments: $@"

#writing functions

function myFun1 {
    echo "Hello, this is myFun1"
}

myFun2() {
    echo "this is myfun2"
}

myFun1
myfun2

#function with arguments 
addition() {
    local num1=$1
    local num2=$2
    let sum=$num1+$num2
echo "sum is $sum"
}
}
addition 1 2
