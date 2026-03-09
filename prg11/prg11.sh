echo "enter the coefficient of x^2:"
read a
echo "enterthe coefficient of x:"
read b
echo "enter the constant term:"
read c
if [$a -ne 0];then
d='echo "($b$b)-(4*$a*$c)"|bc
if[$d -gt 0 ];then
s='echo "scale=2; sqrt($d)"|bc'
p='expr  2\* $a'
r1='echo "scale=2; sqrt($d)" |bc'
bc' 
echo "first root is: $r1"
echo "second root is:$r2"
elif[ $d -eq 0]; then
p='expr 2\*$a'
r=echo "scale=2; -$b/$p"
|bc
