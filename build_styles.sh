#!/bin/bash

# Simple script that builds all scss files to plain css files in the `dist` directory.
echo "Building styles from SCSS to CSS";
cd styles; 
for i in `find **/*.scss`; 
do 
	_dir="$(dirname -- "$i")";
	_file="$(echo "$i" | cut -d. -f1)";
	echo "Building " ../dist/$_file.css "...";
	mkdir -p -- "$_dir";
	sass --scss < $i > ../dist/$_file.css; 
done
cd ..;
echo "All done!";
