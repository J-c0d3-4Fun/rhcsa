#!/bin/bash

read -p "Username: " user

useradd  "$user"
if [[ $? -eq 0 ]]; then
  echo "the user $user was successfully created"
else
  echo "Failed to create user $user"
fi

echo
echo

passwd -e $user
if [[ $? -eq 0 ]]; then
  echo "the password has been set for the user $user"
else
  echo "Failed to create the password for $user"
fi
echo
echo

chage -E  $(date -d +180days +%Y-%m-%d) $user
if [[ $? -eq 0 ]]; then
  echo "the password expiration has been updated for $user"
else
  ehco "the password expiration has failed to upadate for $user"
fi

