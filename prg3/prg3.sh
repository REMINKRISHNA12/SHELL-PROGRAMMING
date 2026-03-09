echo "Enter a first number:"
read a
echo "Enter a second number:"
read b
echo "1.Addition
2.Subtraction
3.Multiplication
4.Division
5.Exit"
while((1))
do
echo "Enter your choice:"
read n
case $n in
1) echo "Sum = " $((a+b));;
2) echo "Diffrence = " $((a-b));;
3) echo "Product = " $((a*b));;
4) echo "Remainder = " $((a%b));;
5) exit;;
esac
done
