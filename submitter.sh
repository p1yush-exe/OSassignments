#!/bin/bash

echo -n "Name the output file: "
read name

final= "${name}.txt"

> "$final"

for file in *; do
	if [ -f "$file" ] && [ "$file" != "$final" ]; then
		cat "$file" >> "$final"
	fi
done

echo "All file contents have been copied to $final"

