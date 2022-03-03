#!/bin/bash  
  
file='numbers.txt'

echo "PASTE THE WHATSAPP GROUP INVITE LINK: "  
read message  

i=1  
while read line; do  
    
#Opening Each Link
open "whatsapp://send?text=$message&phone=$line"
sleep 5
osascript <<EOD

  tell application "System Events"
    key code 36
  end tell
  delay 1

EOD
  i=$((i+1))  
done < $file
