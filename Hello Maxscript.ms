rollout unnamedRollout "Untitled" width:162 height:300
(
	button btn1 "Button" pos:[15,85] width:114 height:32
	label lbl1 "pfkue126@126.com" pos:[35,47] width:101 height:20
	
	on btn1 pressed do 
	(
		messageBox("Test")
	)
)
CreateDialog unnamedRollout

theFrm = dotNetObject "System.Windows.Forms.Form"
theFrm.width = 225
theFrm.height = 145
theFrm.text = "DotNet Form"
theBtn = dotNetObject "System.Windows.Forms.Button"
theBtn.text = "Welcome to DotNet!"
theBtn.width = 200
theBtn.height = 100
theBtn.location = dotNetObject "System.Drawing.Point" 10 10
theFrm.controls.add theBtn
thePtr = DotNetObject "System.IntPtr" (windows.getMAXHWND())
theHwnd = DotNetObject "MaxCustomControls.Win32HandleWrapper" thePtr
theFrm.Show(theHwnd)
