# WhatsApp_Automation
Need to make a WhatsApp Group for more than 100 people from an Excel Sheet?<br><br>
You can export the sheet to CSV, import the Contacts to [Google Contacts](https://www.contacts.google.com), then add each contact **individually**. Then delete the extra added contacts from Google Contacts.<br><br>
Or, you could use this script for automating the process for you.<br>
Currently it only supports sending the WhatsApp Group Invite to each person individually **without** saving the contacts.<br><br>
### How to make it work?
Pre-requisites:
  - macOS
  - WhatsApp Desktop (download from [here](https://apps.apple.com/us/app/whatsapp-desktop/id1147396723?mt=12))
  - Google Chrome (download from [here](https://www.google.com/chrome/))

#### Getting your system ready:
  1. Download the ZIP file of the Repository and unzip it.
  2. Head over to System Preferences -> Security & Privacy -> Accessibility.
  3. Click the Lock to make changes.
  4. Click + and search Terminal from the list of Applications.
  5. Tick it.
  6. Close the System Preferences.
  7. Open WhatsApp Desktop and make sure you're logged in and all the syncing is completed.
  8. Open Google Chrome
  9. Open this link [https://wa.me/919876543210?text=Testing](https://wa.me/919876543210?text=Testing)
  10. You will get a pop-up from Chrome asking if you want to open the link in WhatsApp Desktop. Select option to always open in WhatsApp Desktop.

#### Running the Automation:
  1. Make sure WhatsApp Desktop and Google Chrome are open.
  2. Open WhatsApp_Automation -> numbers.txt
  3. Add all the contacts from your excel sheet in this format -> CCXXXXXXXXXX (Where CC is the Country Code and XXXXXXXXXX is the WhatsApp number of individual, eg: 919876543210. Make sure there are no '+' or '-' or spaces in the number. This is how it shall look. **Don't remove the `END`** <img width="448" alt="image" src="https://user-images.githubusercontent.com/77260373/155940208-a476cd63-3cf2-4a18-a542-b8ccd85d2e05.png"> 
  4. Open Terminal and cd to the WhatsApp_Automation repository.
  5. Open the script in edit mode and in the message, change the text to your WhatsApp Group Invite link.<br> `message = 'YOUR INVITE LINK HERE'` <br>It will look like this. <img width="545" alt="image" src="https://user-images.githubusercontent.com/77260373/155943250-b0b16308-a361-447c-9a2c-ac3d7d46815b.png">
  6. Exit the Edit mode.
  7. Run the Script using this command `sh WhatsApp_Invite_Automation.sh`
  8. The Script will run in the foreground. Don't disturb the process.

<br>
This was built using WhatsApp API and AppleScript. This is not a new concept, people have been doing it since a long time back, but no one applied it to this usecase.<br><br>

## Further Improvements Planned
- Primary:
  - Currently the Automation Process only works on macOS. I'm implementing it on Windows also.
  - Script Only sends WhatsApp group invite to people. Need to add a way to Add Them to Group Directly.
  - Planning to Automate the whole process; taking the numbers from Google Sheets and Adding them to Group.
- Secondary:
  - Making a GUI 
