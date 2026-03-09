#!/bin/bash
echo "enter base of triangle"
read b
echo "enter height of triangle"
read h
area=$(echo "0.5 * $b *$h" |bc)
echo "area of triangle = $area"
