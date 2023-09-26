#!/bin/bash

#fetch the current ip address
current_ip=$(curl -s http://api.ipify.org)

#path to the ip-update.txt file
ip_file_path="ip-update.txt"

#update the file
echo "$current_ip" > "$ip_file_path"

#commit and push to git
git add "$ip_file_path"
git commit -m "Update IP address to $current_ip"
git push origin master --set-upstream
