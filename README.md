# WhatsApp_Automation
Need to make a WhatsApp Group for more than 100 people from an Excel Sheet?<br><br>
You can export the sheet to CSV, import the Contacts to [Google Contacts](https://www.contacts.google.com), then add each contact **individually**. Then delete the extra added contacts from Google Contacts.<br><br>
Or, you could use this script for automating the process for you.<br>
Currently it only supports sending the WhatsApp Group Invite to each person individually **without** saving the contacts.<br>
#### Pre-requisites:
  - macOS or Windows
  - WhatsApp Desktop (download from [here](https://apps.apple.com/us/app/whatsapp-desktop/id1147396723?mt=12))

### How to make it work? (macOS)
#### Getting your system ready:
  1. Download the ZIP file of the Repository and unzip it.
  2. Head over to System Preferences -> Security & Privacy -> Accessibility.
  3. Click the Lock to make changes.
  4. Click + and search Terminal from the list of Applications.
  5. Tick it.
  6. Close the System Preferences.
  7. Open WhatsApp Desktop and make sure you're logged in and all the syncing is completed.

#### Running the Automation:
  1. Open WhatsApp_Automation -> numbers.txt
  2. Add all the contacts from your excel sheet in this format -> CCXXXXXXXXXX (Where CC is the Country Code and XXXXXXXXXX is the WhatsApp number of individual, eg: 919876543210. Make sure there are no '+' or '-' or spaces in the number. This is how it shall look. **Don't remove the `END`** <img width="448" alt="image" src="https://user-images.githubusercontent.com/77260373/155940208-a476cd63-3cf2-4a18-a542-b8ccd85d2e05.png"> 
  3. Open Terminal and cd to the WhatsApp_Automation repository.
  4. Run the [Script](https://github.com/PS1607/WhatsApp-Automation/blob/main/WhatsApp_Invite_Automation.sh) using this command `sh WhatsApp_Invite_Automation.sh`
  5. You will get a prompt asking you to paste the WhatsApp Group Invite Link. Paste it.
  6. The Script will run in the foreground. Don't disturb the process.


### How to make it work? (Windows)
#### Getting your system ready:
  1. Download the ZIP file of the Repository and unzip it.
  2. Open WhatsApp Desktop and make sure you're logged in and all the syncing is completed.

#### Running the Automation:
  1. Open WhatsApp_Automation -> numbers.txt
  2. Add all the contacts from your excel sheet in this format -> CCXXXXXXXXXX (Where CC is the Country Code and XXXXXXXXXX is the WhatsApp number of individual, eg: 919876543210. Make sure there are no '+' or '-' or spaces in the number.<br> **Remove the `END`**. This is how it shall look. <br><br>![Screenshot 2022-03-03 211401](https://user-images.githubusercontent.com/77260373/156599924-a16dda0f-7298-45b5-9751-4b3914c1274f.png)<br>
  3. Run the script by double clicking [whatsapp_windows.vbs](https://github.com/PS1607/WhatsApp-Automation/blob/main/whatsapp_windows.vbs).
  4. Follow the on-screen instructions.
  5. You will get a prompt asking you to paste the WhatsApp Group Invite Link. Paste it.
  6. The Script will run in the foreground. Don't disturb the process.

<br>
This was built using WhatsApp API and AppleScript. This is not a new concept, people have been doing it since a long time back, but no one applied it to this usecase.<br><br>

## Further Improvements Planned
- Primary:
  - [X] Currently the Automation Process only works on macOS. I'm implementing it on Windows also.
  - [ ] Script only sends WhatsApp group invite to people. Need to add a way to Add Them to Group Directly.
  - [ ] Planning to Automate the whole process; taking the numbers from Google Sheets and Adding them to Group.
- Secondary:
  - [ ] Making a GUI 
