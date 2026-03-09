read -p "Enter your first number:" fn
read -p "Enter your second number:" sn
echo "Before swap first number=" $fn
echo "Before swap second number=" $sn
temp=$fn
fn=$sn
sn=$temp
echo "After swap first number=" $fn
echo "After  swap second number=" $sn

