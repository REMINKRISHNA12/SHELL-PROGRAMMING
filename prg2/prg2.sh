read -p "Enter the first number:" n1
read -p "Enter the second number:" n2
if [ $n1 -eq $n2 ]
then
echo "Two numbers are equal."
else
echo "Two numbers are not equal."
fi
