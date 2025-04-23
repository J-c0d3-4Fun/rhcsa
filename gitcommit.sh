#!/bin/bash

echo
echo

git add .

echo "What message do you to add to the commit?"
read message
if [[ $? -eq 0 ]]; then
        git commit -am "$message"
        git branch --show-current
        git push $1
else
        echo "error occurred"
fi
