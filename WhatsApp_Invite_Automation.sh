#!/bin/bash  
  
file='numbers.txt'  
message='https://chat.whatsapp.com/F2QDW2o2zLa32gvYUsSLd1'
links='Whatsapp_links.txt'  
echo > $links
i=1  
while read line; do  
  
#Converting Each Number to Link  
echo "https://wa.me/$line?text=$message"  >> $links
i=$((i+1))  
done < $file  

i=1  
while read line; do  
  
#Opening Each Link
open "$line"
sleep 5
osascript <<EOD

  tell application "System Events"
	key code 36
  end tell
  delay 1
  tell application "Google Chrome"
	activate
  end tell
  tell application "System Events"
	key down {command}
	keystroke "w"
	key up {command}
  end tell
EOD
i=$((i+1))  
done < $links  

