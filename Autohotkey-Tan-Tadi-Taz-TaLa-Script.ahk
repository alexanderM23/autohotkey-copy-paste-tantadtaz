#NoEnv
#SingleInstance Force
/*
An Autohotkey Tan-Tadi-Taz-TaLa Script by Aleksandr Mamajevs

This Autohotkey scritpt allows you to copy and paste a bit more easier and faster, 
as well as other operations.
The main hotkeys are:

Tab + Top1 - Copy;
Tab + Top2 - Paste;
Tab + Top3 - Cut;
Tab + Top4 - Select All;
Tab + Q - Shift + Backspace (Delete Edges);
Tab + W - Delete;
Tab + E - Select one letter to the Left;
Tab + R - Select one letter to the Right;
Tab + C - Select one word to the Left;
Tab + V - Select one word to the Right;
Tab + Z - Undo last operation (Ctrl - Z);
Tab + X - Asterix mark, for select all files (Numpad*) in some programs;
Tab + B - Numpad Minus (-), for Unselect all files  in some programs;
Tab + A - Two Zeros;
Tab + F - Send Dot (.);
Tab + S - Enter;
Tab + D - Enter;

Shift + Tab - Shift + Tab;
Alt + F4 - F11 (if you press Alt + F4 accidentally. Do not worry any more about any program would be closed by mistake.);
F4 - F11 (if you press F4 accidentally. Do not worry any more about any program would be closed by mistake.);

CTRL + ALT + SHIFT + WIN + F12 - for Quick Script Exit;
ScrollLock - for Quick Suspend Script Toggle;

Instead of having to press Ctrl again and again before each operation, all you need: just press Tab key once then hold it, when you press any other key from this list. 

My suggestion is - to remember such simple expression:
Ta-n, Ta-di, Ta-z, Ta-La - that is for Copy, Paste, Cut, Select All.

Ta-n - is for Tab + One;
Ta-di - is for Tab + Two (Duo, Di)
Ta-z - is for Tab + Top3 (The trees are growing in the ZOO.)
Ta-La - is for Tab + ALL (to select ALL)

All others hotkeys is not necessary to memorize at all. I've put them here as an example.
This expression (this hotkeys) are working, if you copy text from one window to another, as well. Just remember - you do not need to release the TAB key each time, and press it again. Even if you are working with two windows (two text documents)!

Good Luck!
*/

;START OF CONFIG SECTION
#MaxHotkeysPerInterval 500
; #NoTrayIcon
#KeyHistory 0
SetBatchLines -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed. Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, %A_ScriptDir% ; Ensures a consistent starting directory.
; SplitPath, A_ScriptName, , , , MyScriptName ; store the script file name (without extension) in MyScriptName
; DetectHiddenWindows,On
; SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
; SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
; SetMouseDelay,-1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag
; MaxThreadsPerHotkey,1 ; no re-entrant hotkey handling
; #Warn  ; Enable warnings to assist with detecting common errors.
; Hook hotkeys are smart enough to ignore such keystrokes.
; #UseHook

;END OF CONFIG SECTION

;This is needed or key presses would faulty send their natural
;actions. Like NumPadDiv would send sometimes "/" to the
;screen.
; #InstallKeybdHook

Temp = 0
Temp2 = 0


#UseHook, On   ; in case if a key would send command
				; as "itself". It works as prefix $, button
				; just for all that keys, that are lower in the list.
				



#IfWinActive
Tab & 1::Send ^{c}						; Tab - Top1							Copy to Clipboard (Ctrl - C)
Tab & 2::Send ^{v}						; Tab - Top2							Paste from Clipboard (Ctrl - V)
Tab & 3::Send ^{x}						; Tab - Top3							Cut to Clipboard (Ctrl - X)
Tab & 4::Send ^{a}						; Tab - Top4							Select All (Ctrl - A)

Tab & q::Send +{VK08}					; Tab - Q								Shift + Backspace (Delete Edges)
Tab & w::Send {VK2E}					; Tab - W								Delete

Tab & e::Send +{Left}					; Tab - E								Select one letter to the Left
Tab & r::Send +{Right}					; Tab - R								Select one letter to the Right

Tab & c::Send ^+{Left}					; Tab - C								Select one word to the Left
Tab & v::Send ^+{Right}					; Tab - V								Select one word to the Right

Tab & z::Send ^{z}						; Tab - Z								Undo last operation (Ctrl - Z)
Tab & x::Send {VK6A}					; Tab - X								Asterix mark, for select all files (Numpad*)
Tab & b::Send {NumpadSub}				; Tab - B								Numpad + Minus (-), for Unselect all files

Tab & a::Send {0}{0}					; Tab - A								Two Zeros
Tab & f::Send {.}						; Tab - F								Send Dot (.)

Tab & s::Send {Enter}					; Tab - S								Enter
Tab & d::Send {Enter}					; Tab - D								Enter

+Tab::+Tab								; Shift - Tab							Send: Shift - Tab
return

!F4::F11
F4::F11
return

^!+#F12::ExitApp ; press CTRL+ALT+SHIFT+WIN+F12 buttons phisicaly for Quick Script Exit
ScrollLock::Suspend, Toggle ; press ScrollLock for Suspend Toggle
return
;~

Tab::
	Send {Tab}
	return
