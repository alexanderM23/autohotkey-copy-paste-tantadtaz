#NoEnv
#SingleInstance Force
; ================================================================================
; AutoHotkey Copy-Paste TanTadiTaz Script v.2.0
; by Aleksandrs M. Orrin (aka r.n. Aleksander Mamajevs)
; ================================================================================
;
; DESCRIPTION:
; Revolutionary AutoHotkey script for enhanced copy-paste operations.
; Uses only the top row of the keyboard, completely eliminating the need
; for bottom modifier keys (Ctrl, Alt, Shift). Full version with extended
; functionality for power users.
;
; ORIGIN STORY:
; The script was born from necessity — juice spilled on a keyboard once
; disabled the bottom modifier keys. This accident led to a discovery:
; you can work faster and more comfortably using only Tab and the top row
; of keys. Especially effective in darkness or when fatigued.
;
; PHILOSOPHY:
; • Top row of keyboard — the most accessible zone
; • Tab — the only modifier you need
; • One hand operation — maximum speed
; • Darkness-friendly — perfect for night work
;
; ================================================================================
; HOTKEYS:
; ================================================================================
;
; CORE OPERATIONS:
; Tab + 1     → Copy                      | Ta-n (oNe)
; Tab + 2     → Paste                     | Ta-di (Duo)
; Tab + 3     → Cut                       | Ta-z (cutZ)
; Tab + 4     → Select All                | Ta-La (aLL)
;
; TEXT EDITING:
; Tab + Q     → Delete Edges (Shift+Backspace)
; Tab + W     → Delete
; Tab + Z     → Undo (Ctrl+Z)
; Tab + S     → Enter
; Tab + D     → Enter (alternative)
;
; NAVIGATION & SELECTION:
; Tab + E     → Select one letter Left
; Tab + R     → Select one letter Right
; Tab + C     → Select one word Left
; Tab + V     → Select one word Right
;
; SPECIAL FUNCTIONS:
; Tab + X     → Select all files (Numpad*)
; Tab + B     → Deselect all (Numpad-)
; Tab + A     → Insert "00"
; Tab + F     → Insert dot (.)
;
; PROTECTION:
; Shift + Tab → Shift + Tab (preserved)
; Alt + F4    → F11 (prevents accidental closing)
; F4          → F11 (additional protection)
;
; SCRIPT CONTROL:
; ScrollLock              → Suspend/Resume script toggle
; Ctrl+Alt+Shift+Win+F12  → Emergency exit
;
; ================================================================================
; MNEMONICS:
; ================================================================================
; Remember the complete mantra: "Ta-n, Ta-di, Ta-z, Ta-La"
; • Ta-n  = Tab+1 = Copy (one)
; • Ta-di = Tab+2 = Paste (duo/double)
; • Ta-z  = Tab+3 = Cut (cutZ)
; • Ta-La = Tab+4 = Select All (all)
;
; ================================================================================
; APPLICATIONS:
; ================================================================================
; • Professional text editing
; • Coding and development
; • Working in darkness (evening/night)
; • Quick copying between multiple windows
; • File management operations
; • Emergency situations (smoke, poor visibility)
; • Space stations (working in gloves/zero gravity)
; • Accessibility (limited mobility/elderly users)
;
; ================================================================================
; TECHNICAL DETAILS:
; ================================================================================
; • Quick Tab press works normally
; • Holding Tab activates command mode
; • Smart context detection for different operations
; • Alt+Tab temporarily unavailable (use ScrollLock to pause)
; • Works equally well with text and files
; • No finger gymnastics required
;
; ================================================================================
; WORKFLOW EXAMPLE:
; ================================================================================
; 1. Hold Tab (never release during operation)
; 2. Window1: Double-click word → Press "1" (copy)
; 3. Switch to Window2: Click destination → Press "2" (paste)
; 4. Press "S" for new line (still holding Tab)
; 5. Repeat — achieve 2x-4x speed increase!
;
; ================================================================================
; SYSTEM REQUIREMENTS:
; ================================================================================
; • Windows 7/8/10/11
; • AutoHotkey v1.1+ or v2.0+
; • Script execution permissions
;
; ================================================================================
; LICENSE:
; ================================================================================
; Free to use and modify
; Preserve authorship when distributing
;
; ================================================================================
; CONTACT:
; ================================================================================
; GitHub: https://github.com/alexanderM23/autohotkey-copy-paste-tantadtaz
; 
; ================================================================================
; VERSION & DATE:
; ================================================================================
; Version: 2.0 Full
; Created: 2021
; Last Updated: 2025-09-04
;
; ================================================================================
; SETTINGS
; ================================================================================

; Basic settings for reliability
SendMode Input
SetWorkingDir, %A_ScriptDir%

; ================================================================================
; CODE BEGINS BELOW
; ================================================================================
#IfWinActive
Tab & 1::Send ^{c}						; Tab - Top1						Copy to Clipboard (Ctrl - C)
Tab & 2::Send ^{v}						; Tab - Top2						Paste from Clipboard (Ctrl - V)
Tab & 3::Send ^{x}						; Tab - Top3						Cut to Clipboard (Ctrl - X)
Tab & 4::Send ^{a}						; Tab - Top4						Select All (Ctrl - A)

Tab & q::Send +{VK08}					; Tab - Q								Shift + Backspace (Delete Edges)
Tab & w::Send {VK2E}					; Tab - W								Delete

Tab & e::Send +{Left}					; Tab - E								Select one letter to the Left
Tab & r::Send +{Right}				; Tab - R								Select one letter to the Right

Tab & c::Send ^+{Left}				; Tab - C								Select one word to the Left
Tab & v::Send ^+{Right}				; Tab - V								Select one word to the Right

Tab & z::Send ^{z}						; Tab - Z								Undo last operation (Ctrl - Z)
Tab & x::Send {VK6A}					; Tab - X								Asterix mark, for select all files (Numpad*)
Tab & b::Send {NumpadSub}			; Tab - B								Numpad + Minus (-), for Unselect all files

Tab & a::Send {0}{0}					; Tab - A								Two Zeros
Tab & f::Send {.}							; Tab - F								Send Dot (.)

Tab & s::Send {Enter}					; Tab - S								Enter
Tab & d::Send {Enter}					; Tab - D								Enter

+Tab::+Tab										; Shift - Tab						Send: Shift - Tab
return

; ================================================================================
; CLOSE PROTECTION - "Safety Net" Feature
; ================================================================================
; Prevents accidental program closure during high-speed work
; Alt+F4 and F4 are redirected to harmless F11 (fullscreen toggle)
; 
; WHY: When working fast with Tab combinations, it's easy to slip and hit Alt+F4
; This saves you from losing unsaved work due to accidental window closure
; ================================================================================
!F4::F11   ; Alt+F4 → F11 (close protection)
F4::F11    ; F4 → F11 (extra safety)
return

^!+#F12::ExitApp ; press CTRL+ALT+SHIFT+WIN+F12 buttons phisicaly for Quick Script Exit
ScrollLock::Suspend, Toggle ; press ScrollLock for Suspend Toggle
return

Tab::
	Send {Tab}
	return
