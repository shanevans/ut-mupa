; MUPA - Make Undertale Playable Again
; v.0.01 - 05/07/2017
; Shane Evans - https://github.com/shanevans/
;
; Starts Undertale, exits when Undertale exits.
; Requires Debug mode to be turned on for certain functions
; Button configuration based on Logitech Rumblepad 2. 
; Buttons may need to be re-bound for other controllers.
;
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases
#Warn  ; Enable warnings to assist with detecting common errors
#MaxThreadsPerHotkey 2 ; I think necessary for my implementation of grinding
SendMode Input  ; Recommended for new scripts because whatever
;
Updown := false
Run, steam://rungameid/391540
WinWait, ahk_exe UNDERTALE.exe
WinWaitClose, ahk_exe UNDERTALE.exe
ExitApp
Return

#IfWinActive ahk_exe UNDERTALE.exe ; No other games please
Joy1::
	Send {BS down} 
	SetTimer, WaitForButtonUp1, 30
Return
Joy10::
	Send {ESC down} 
	SetTimer, WaitForButtonUp10, 30
Return

Joy9::Send {F4} ; Toggles fullscreen
Joy8::Send f ; Doubles gamespeed for current room/battle (needs debug mode)

Joy7::
	Updown := !Updown
	while Updown 
	{
	Send {Up down}
	Sleep 90
	Send {Down down}
	}
	Send {Up up}
	Send {Down up}
Return

WaitForButtonUp1:
if GetKeyState("Joy1")  ; The button is still, down, so keep waiting.
    return
Send {BS up} 
SetTimer, WaitForButtonUp1, off
return

WaitForButtonUp10:
if GetKeyState("Joy10")  ; The button is still, down, so keep waiting.
    return
Send {ESC up}
SetTimer, WaitForButtonUp10, off
return

