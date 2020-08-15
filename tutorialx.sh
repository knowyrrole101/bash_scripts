MOON=$1
MOON2=$2

echo $MOON
echo $MOON2

# Built in Variables
echo "Last program's return value: $?"
echo "Last program's return value: $?"
echo "Script's PID: $$"
echo "Number of arguments passed to script: $#"
echo "All arguments passed to script: $@"
echo "Script's arguments separated into different variables: $1 $2..."

echo "${PWD}" 

#Clear Screen
clear
echo "Hey im back!!"
echo "Give me a name"
# Take in user input

read Name
echo Hello, $Name!
echo $Name
# Conditional and access your username
# Must keep spaces in conditional or it will fail
if [ $Name == $USER ]
then 
    echo "This is your username"
else 
    echo "THis is not your username" 
fi
# if [ != $USER ]
# which is invalid syntax
# # so the "safe" way to use potentially empty variables in bash is:
# if [ "$Name" != $USER ] ...
# # which, when $Name is empty, is seen by bash as:
# if [ "" != $USER ] ...
# WHICH WORKS AS EXPECTED

echo "${USER} is the computer username!"

# Conditional execution
echo "Always executed" || echo "Only if the first command fails"
echo "Always executed " && echo "Only executed if first command DOES NOT FAIL!"

# To use && and || with if statements, you need multiple pairs of square brackets:
if [ "$Name" == "Steve" ] && [ "$Age" -eq 15 ]
then
    echo "This will run if $Name is Steve AND $Age is 15."
fi

if [ "$Name" == "Daniya" ] || [ "$Name" == "Zach" ]
then
    echo "This will run if $Name is Daniya OR Zach."
fi

#Print directorys and files 
for d in *; do
    echo "File: ${d}"
    if [ -d "$d" ]; then
        echo "It was a dir: $d"
    fi
done

#Declare array and add items to array
arr=()
for d in *; do
    arr+=($d)
done
# Print Array new line each time
echo ${arr[@]}
for i in "${arr[@]}"; do
    echo "$i"
done

# Print element in folder and put Array index value in there next to name
for i in "${!arr[@]}"; do 
  printf "$i.${arr[$i]}\n"
done

# Print all directories in current directory
find . -maxdepth 1 -mindepth 1 -type d -printf '%f\n'

# Function Declaration
my_function(){
    echo "This is my function!"
}
# Function Call
my_function