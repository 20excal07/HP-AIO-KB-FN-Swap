#Requires AutoHotkey v2.0
InstallKeybdHook true true

; FN key function swap for HP AIO keyboards

; --F1 key--
*VOLUME_MUTE::{
	ReleaseF1toF6("F1")
	Send "{Blind}{F1 DownR}"
}
*VOLUME_MUTE Up::{
	Send "{Blind}{F1 Up}"
}
*F1::VOLUME_MUTE

; --F2 key--
*VOLUME_DOWN::{
	ReleaseF1toF6("F2")
	Send "{Blind}{F2 DownR}"
}
*VOLUME_DOWN Up::{
	Send "{Blind}{F2 Up}"
}
*F2::VOLUME_DOWN

; --F3 key--
*VOLUME_UP::{
	ReleaseF1toF6("F3")
	Send "{Blind}{F3 DownR}"
}
*VOLUME_UP Up::{
	Send "{Blind}{F3 Up}"
}
*F3::VOLUME_UP

; --F4 key--
*MEDIA_PREV::{
	ReleaseF1toF6("F4")
	Send "{Blind}{F4 DownR}"
}
*MEDIA_PREV Up::{
	Send "{Blind}{F4 Up}"
}
*F4::MEDIA_PREV

; --F5 key--
*MEDIA_PLAY_PAUSE::{
	ReleaseF1toF6("F5")
	Send "{Blind}{F5 DownR}"
}
*MEDIA_PLAY_PAUSE Up::{
	Send "{Blind}{F5 Up}"
}
*F5::MEDIA_PLAY_PAUSE

; --F6 key--
*MEDIA_NEXT::{
	ReleaseF1toF6("F6")
	Send "{Blind}{F6 DownR}"
}
*MEDIA_NEXT Up::{
	Send "{Blind}{F6 Up}"
}
*F6::MEDIA_NEXT

; --F7 and F8 keys--
; No idea how to swap the "Brightness Up/Down" keys.
; Functions as-is, but you can now also press the "Show Desktop" shortcut key for F7
; And also the Notifications shortcut key for F8
*<#d::Send "{Blind}{F7 DownR}"
*<#d Up::Send "{Blind}{F7 Up}"
*<+<!<#F21::Send "{Blind}{F8 DownR}"
*<+<!<#F21 Up::Send "{Blind}{F8 Up}"

; --F9 key--
*<+<#F21::Send "{Blind}{F9 DownR}"
*<+<#F21 Up::Send "{Blind}{F9 Up}"
*F9 Up::{
	Send "{Blind}{LShift DownR}"
	Send "{Blind}{LWin DownR}"
	Send "{Blind}{F21 DownR}"
	Send "{Blind}{LShift Up}"
	Send "{Blind}{LWin Up}"
	Send "{Blind}{F21 Up}"
}

; --F10 key--
*<#Tab::Send "{Blind}{F10 DownR}"
*<#Tab Up::Send "{Blind}{F10 Up}"
*F10 Up::{
	Send "{Blind}{LWin DownR}"
	Send "{Blind}{Tab DownR}"
	Send "{Blind}{LWin Up}"
	Send "{Blind}{Tab Up}"
}

; --F11 key--
*<^<#F21::Send "{Blind}{F11 DownR}"
*<^<#F21 Up::Send "{Blind}{F11 Up}"
*F11 Up::{
	Send "{Blind}{LCtrl DownR}"
	Send "{Blind}{LWin DownR}"
	Send "{Blind}{F21 DownR}"
	Send "{Blind}{LStrl Up}"
	Send "{Blind}{LWin Up}"
	Send "{Blind}{F21 Up}"
}

; --F12 key--
*<#F21::Send "{Blind}{F12 DownR}"
*<#F21 Up::Send "{Blind}{F12 Up}"
*F12 Up::{
	Send "{Blind}{LWin DownR}"
	Send "{Blind}{F21 DownR}"
	Send "{Blind}{LWin Up}"
	Send "{Blind}{F21 Up}"
}

; --NumLock key--
; This turns your number-only NumPad into a regular one.
; Press the Calculator shortcut key to toggle NumLock On/Off.
; It's super long because I didn't want do it in a way where the NumLock key
; would be triggered every time the keyboard sees that NumLock is actually off.
global NumLockState := GetKeyState("NumLock", "T")
OnExit SaveLastNumLockState
*LAUNCH_APP2::{
	global NumLockState
	if NumLockState {
		Tooltip "NumLock is OFF"
	} else {
		Tooltip "NumLock is ON"
	}
	SetTimer () => ToolTip(), -1000
	NumLockState := !NumLockState
}
*Numpad0::{
	if !NumLockState 
		Send "{Blind}{NumpadIns DownR}"
	else
		Send "{Blind}{Numpad0 DownR}"
}
*Numpad0 Up::{
	if !NumLockState 
		Send "{Blind}{NumpadIns Up}"
	else
		Send "{Blind}{Numpad0 Up}"
}
*Numpad1::{
	if !NumLockState 
		Send "{Blind}{NumpadEnd DownR}"
	else
		Send "{Blind}{Numpad1 DownR}"
}
*Numpad1 Up::{
	if !NumLockState 
		Send "{Blind}{NumpadEnd Up}"
	else
		Send "{Blind}{Numpad1 Up}"
}
*Numpad2::{
	if !NumLockState 
		Send "{Blind}{NumpadDown DownR}"
	else
		Send "{Blind}{Numpad2 DownR}"
}
*Numpad2 Up::{
	if !NumLockState 
		Send "{Blind}{NumpadDown Up}"
	else
		Send "{Blind}{Numpad2 Up}"
}
*Numpad3::{
	if !NumLockState 
		Send "{Blind}{NumpadPgDn DownR}"
	else
		Send "{Blind}{Numpad3 DownR}"
}
*Numpad3 Up::{
	if !NumLockState 
		Send "{Blind}{NumpadPgDn Up}"
	else
		Send "{Blind}{Numpad3 Up}"
}
*Numpad4::{
	if !NumLockState 
		Send "{Blind}{NumpadLeft DownR}"
	else
		Send "{Blind}{Numpad4 DownR}"
}
*Numpad4 Up::{
	if !NumLockState 
		Send "{Blind}{NumpadLeft Up}"
	else
		Send "{Blind}{Numpad4 Up}"
}
*Numpad5::{
	if !NumLockState 
		Send "{Blind}{NumpadClear DownR}"
	else
		Send "{Blind}{Numpad5 DownR}"
}
*Numpad5 Up::{
	if !NumLockState 
		Send "{Blind}{NumpadClear Up}"
	else
		Send "{Blind}{Numpad5 Up}"
}
*Numpad6::{
	if !NumLockState 
		Send "{Blind}{NumpadRight DownR}"
	else
		Send "{Blind}{Numpad6 DownR}"
}
*Numpad6 Up::{
	if !NumLockState 
		Send "{Blind}{NumpadRight Up}"
	else
		Send "{Blind}{Numpad6 Up}"
}
*Numpad7::{
	if !NumLockState 
		Send "{Blind}{NumpadHome DownR}"
	else
		Send "{Blind}{Numpad7 DownR}"
}
*Numpad7 Up::{
	if !NumLockState 
		Send "{Blind}{NumpadHome Up}"
	else
		Send "{Blind}{Numpad7 Up}"
}
*Numpad8::{
	if !NumLockState 
		Send "{Blind}{NumpadUp DownR}"
	else
		Send "{Blind}{Numpad8 DownR}"
}
*Numpad8 Up::{
	if !NumLockState 
		Send "{Blind}{NumpadUp Up}"
	else
		Send "{Blind}{Numpad8 Up}"
}
*Numpad9::{
	if !NumLockState 
		Send "{Blind}{NumpadPgUp DownR}"
	else
		Send "{Blind}{Numpad9 DownR}"
}
*Numpad9 Up::{
	if !NumLockState 
		Send "{Blind}{NumpadPgUp Up}"
	else
		Send "{Blind}{Numpad9 Up}"
}
*NumpadDot::{
	if !NumLockState 
		Send "{Blind}{NumpadDel DownR}"
	else
		Send "{Blind}{NumpadDot DownR}"
}
*NumpadDot Up::{
	if !NumLockState 
		Send "{Blind}{NumpadDel Up}"
	else
		Send "{Blind}{NumpadDot Up}"
}

SaveLastNumLockState(Reason, Code) {
	SetNumLockState NumLockState
}

; "Sticky" function keys mitigation
ReleaseF1toF6(Key) {
	KeyPressed := GetKeyState(Key)
	if !KeyPressed && GetKeyState("F1") {
		Send "{Blind}{F1 Up}"
	}
	if !KeyPressed && GetKeyState("F2") {
		Send "{Blind}{F3 Up}"
	}
	if !KeyPressed && GetKeyState("F3") {
		Send "{Blind}{F3 Up}"
	}
	if !KeyPressed && GetKeyState("F4") {
		Send "{Blind}{F4 Up}"
	}
	if !KeyPressed && GetKeyState("F5") {
		Send "{Blind}{F5 Up}"
	}
	if !KeyPressed && GetKeyState("F6") {
		Send "{Blind}{F6 Up}"
	}
}
