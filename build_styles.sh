#!/bin/bash

# Simple script that builds all scss files to plain css files in the `dist` directory.
echo "Building styles from SCSS to CSS";
cd styles; 
for i in `find **/*.scss`; 
do 
	echo "Building " $i "...";
	_dir="$(dirname -- "$i")";
	mkdir -p -- "$_dir";
	sass --scss $i ../dist/$i ; 
done
cd ..;
echo "All done!";
