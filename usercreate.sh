#!/bin/sh
echo "----------------------------------------------------------"
echo "Bulk User Creation Shell Script - Nantha Kumar Rajasekaren"
echo "----------------------------------------------------------"
for user in `more userlist.txt`
do
echo "$user"
useradd $user
echo "$user:$user" | chpasswd
chage -d 0 $user
done