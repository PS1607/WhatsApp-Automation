dim number

set objFile=CreateObject("Scripting.FileSystemObject").OPenTextFile("numbers.txt",1)
messageinput = InputBox("Paste WhatsApp Group Invite Link here: ", "WhatsApp Group Invite")
sleeptime = InputBox("Select Delay(in ms) between each text, based on your system speed:"&vbNewLine&" - 3000 is ideal"&vbNewLine&" - 5000 for slow systems"&vbNewLine&" - 10000 for very slow systems", "WhatsApp Group Invite", 3000)

a = MsgBox("Send this link to the list of numbers?"&vbNewLine&messageinput,1,"Confirmation to Proceed")
If(a=1) Then
	MsgBox "Process will run in the Foreground."&vbNewLine&"Please DON'T Press any Key or Click anywhere before the process finishes."&vbNewLine&"You'll get a confirmation once the process has finished.",,"WhatsApp Group Invite"
	do while not objFile.AtEndOfStream
	number=objFile.ReadLine()
		set shell=WScript.CreateObject("WScript.Shell")

		shell.run("whatsapp://send?text="&messageinput&"&phone="&number)
		WScript.sleep(sleeptime)
		shell.SendKeys "{ENTER}"
	Loop
	WScript.sleep(1000)
	msgbox "Process is finished.",,"WhatsApp Group Invite"

Else 
	msgbox "Process Aborted.",,"WhatsApp Group Invite"
End If
objFile.close