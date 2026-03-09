read -p "enter first number:" a
read -p "enter second number:" b
read -p "enter third number:" c
read -p "enter fourth number:" d
if [ $a -lt $b ] && [ $a -lt $c ] && [ $a -lt $d ]
then
echo "$a is smallest number"
elif [ $b -lt $c ] && [ $b -lt $d ] && [ $b -lt $a ]
then
echo "$b is smallest number:"
elif [ $c -lt $b ] && [ $c -lt $d ] && [ $c -lt $a ]
then
echo "$c is smallest number"
else
echo "$d is smallest number"
fi
