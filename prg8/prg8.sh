read -p "enter a number" a
b=$(( $a % 2 ))
if [ $b -eq 0 ]
then
echo "the number is even"
else
echo "the number is odd"
fi
