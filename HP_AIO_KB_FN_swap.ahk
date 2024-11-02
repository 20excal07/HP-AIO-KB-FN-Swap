#Requires AutoHotkey v2.0
InstallKeybdHook true true

; FN key function swap for HP AIO keyboards

; F1 key
*VOLUME_MUTE::{
	ReleaseF1toF6("F1")
	Send "{Blind}{F1 DownR}"
	Send "{Blind}{F1 Up}"
}
*F1::VOLUME_MUTE

; F2 key
*VOLUME_DOWN::{
	ReleaseF1toF6("F2")
	Send "{Blind}{F2 DownR}"
}
*VOLUME_DOWN Up::{
	Send "{Blind}{F2 Up}"
}
*F2::VOLUME_DOWN

; F3 key
*VOLUME_UP::{
	ReleaseF1toF6("F3")
	Send "{Blind}{F3 DownR}"
}
*VOLUME_UP Up::{
	Send "{Blind}{F3 Up}"
}
*F3::VOLUME_UP

; F4 key
*MEDIA_PREV::{
	ReleaseF1toF6("F4")
	Send "{Blind}{F4 DownR}"
}
*MEDIA_PREV Up::{
	Send "{Blind}{F4 Up}"
}
*F4::MEDIA_PREV

; F5 key
*MEDIA_PLAY_PAUSE::{
	ReleaseF1toF6("F5")
	Send "{Blind}{F5 DownR}"
	Send "{Blind}{F5 Up}"
}
*F5::MEDIA_PLAY_PAUSE

; F6 key
*MEDIA_NEXT::{
	ReleaseF1toF6("F6")
	Send "{Blind}{F6 DownR}"
}
*MEDIA_NEXT Up::{
	Send "{Blind}{F6 Up}"
}
*F6::MEDIA_NEXT

; F7 and F8 keys
; No idea how to swap the "Brightness Up/Down" keys.
; Functions as-is, but you can now also press the "Show Desktop" shortcut key for F7
; And also the Notifications shortcut key for F8
*<#d::Send "{Blind}{F7 DownR}"
*<#d Up::Send "{Blind}{F7 Up}"
*<+<!<#F21::Send "{Blind}{F8 DownR}"
*<+<!<#F21 Up::Send "{Blind}{F8 Up}"

; F9 key
*<+<#F21::Send "{Blind}{F9 DownR}"
*<+<#F21 Up::Send "{Blind}{F9 Up}"
*F9::{
	Send "{Blind}{LShift DownR}"
	Send "{Blind}{LWin DownR}"
	Send "{Blind}{F21 DownR}"
	Send "{Blind}{LShift Up}"
	Send "{Blind}{LWin Up}"
	Send "{Blind}{F21 Up}"
}

; F10 key
*<#Tab::Send "{Blind}{F10 DownR}"
*<#Tab Up::Send "{Blind}{F10 Up}"
*F10::{
	Send "{Blind}{LWin DownR}"
	Send "{Blind}{Tab DownR}"
	Send "{Blind}{LWin Up}"
	Send "{Blind}{Tab Up}"
}

; F11 key
*<^<#F21::Send "{Blind}{F11 DownR}"
*<^<#F21 Up::Send "{Blind}{F11 Up}"
*F11::{
	Send "{Blind}{LCtrl DownR}"
	Send "{Blind}{LWin DownR}"
	Send "{Blind}{F21 DownR}"
	Send "{Blind}{LStrl Up}"
	Send "{Blind}{LWin Up}"
	Send "{Blind}{F21 Up}"
}

; F12 key
*<#F21::Send "{Blind}{F12 DownR}"
*<#F21 Up::Send "{Blind}{F12 Up}"
*F12::{
	Send "{Blind}{LWin DownR}"
	Send "{Blind}{F21 DownR}"
	Send "{Blind}{LWin Up}"
	Send "{Blind}{F21 Up}"
}

; NumLock key
; This turns your number-only NumPad into a regular one
; Press the Calculator shortcut key to toggle NumLock On/Off
global NumLockState := GetKeyState("NumLock", "T")
*LAUNCH_APP2::{
	global NumLockState
	Send "{Blind}{NumLock DownR}"
	if NumLockState {
		SetNumLockState "AlwaysOff"
		Tooltip "NumLock is OFF"
	} else {
		SetNumLockState "AlwaysOn"
		Tooltip "NumLock is ON"
	}
	SetTimer () => ToolTip(), -1000
	NumLockState := !NumLockState
}
*LAUNCH_APP2 Up::Send "{Blind}{NumLock Up}"
*NumLock::{
	global NumLockState
	if !NumLockState {
		Send "{Blind}{NumLock Up}"
	}
}

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
