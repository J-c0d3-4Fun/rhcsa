#!/bin/bash

echo
echo

echo "What would you like to add to github?"
echo "Please provide the absolute or full path from the directory your are currently in."
read folderPath
if [[ ! -d "$folderPath"  ]]; then
	echo "This is not a valid folder path"
	exit 1
else
	git add "$folderPath"
fi 

echo "What message do you to add to the commit?"
read message
if [[ $? -eq 0 ]]; then
	git commit -am "$message"
	git branch --show-current 
	git push $1
else 
	echo "error occurred"
fi

