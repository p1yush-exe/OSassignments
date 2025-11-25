#!/bin/bash

echo -n "Enter a character: "
read c

case $c in
	[aeiouAEIOU])
		echo "$c is a vowel"
		;;
	[a-zA-Z])
		echo "$c is a consonant"
		;;
	*)
		echo "invalid input"
		;;
esac
