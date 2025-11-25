#!/bin/bash 

echo -n "Enter filename: "
read file

if [ ! -f "$file" ]; then
	echo "Error: File not existence."
	exit 1
fi

lines=$(wc -l < "$file")
words=$(wc -w < "$file")

echo "Total lines: $lines"
echo "Total words: $words"
