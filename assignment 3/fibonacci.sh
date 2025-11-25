#!/bin/bash

echo "enter number of terms you want to print:"
read n

fibonacci()
{
	a=0
	b=1
	
	for (( i=0; i<n; i++ ))
	do
		echo -n "$a "
		fn=$((a + b))
		a=$b
		b=$fn
	done
}

fibonacci $n
echo
