echo "Enter the number"
read a
i=2
f=0
while [ $i -lt $a ]
do
s=`expr $a % $i`
if [ $s -eq $f ]
then
echo "Not Prime"
exit
else
i=`expr $i + 1`
fi
done
echo "Prime number"
