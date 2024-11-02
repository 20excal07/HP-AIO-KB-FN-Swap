#Requires AutoHotkey v2.0
InstallKeybdHook true true

; FN key function swap for HP AIO keyboards

; F1 key
*VOLUME_MUTE::{
	Send "{Blind}{F1 DownR}"
	Send "{Blind}{F1 Up}"
}
*F1::VOLUME_MUTE

; F2 key
*VOLUME_DOWN::F2
*F2::VOLUME_DOWN

; F3 key
*VOLUME_UP::F3
*F3::VOLUME_UP

; F4 key
*MEDIA_PREV::F4
*F4::MEDIA_PREV

; F5 key
*MEDIA_PLAY_PAUSE::{
	Send "{Blind}{F5 DownR}"
	Send "{Blind}{F5 Up}"
}
*F5::MEDIA_PLAY_PAUSE

; F6 key
*MEDIA_NEXT::F6
*F6::MEDIA_NEXT

; F7 and F8 keys
; No idea how to swap the "Brightness Up/Down" keys.
; Functions as-is, but you can now also press the Calculator shortcut key for F7
; And also the "Show Desktop" shortcut key for F8
*LAUNCH_APP2::F7
*<#d::Send "{Blind}{F8 DownR}"
*<#d Up::Send "{Blind}{F8 Up}"

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