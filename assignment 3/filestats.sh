#!/bin/bash

echo -n "Enter filename: "
read file

if [ ! -e "$file" ]; then
	echo "Error: file not existence"
	exit 1
fi


# File size
size=$(stat -c %s "$file")
echo -n "Size (bytes): $size      "

# Permissions
perms=$(stat -c %A "$file")
echo -n "Permissions : $perms        "

# Owner
owner=$(stat -c %U "$file")
echo -n "Owner: $owner         "

# Modification time
mtime=$(stat -c %y "$file")
echo -n "Modified: $mtime"
echo
