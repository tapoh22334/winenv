; AuthHotKey quick reference
;   https://www.autohotkey.com/docs/AutoHotkey.htm

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$Esc::
SoundPlay, *-1, 1
Send, {Esc}
return

#i::
If RegExMatch(Clipboard, "^(https?://|www\.)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(/\S*)?$")
    Run %Clipboard%
Else
    Run,http://www.google.co.jp/search?q=%Clipboard%
return

!j::Send {Down}
!k::Send {Up}
!h::Send {Left}
!l::Send {Right}

;!i::Send !{Right}
;!o::Send !{Left}

^h::Send {BS}
^m::Send {Enter}

#j::Send {Blind}#{Down}
#k::Send {Blind}#{Up}
#h::Send {Blind}#{Left}
#l::Send {Blind}#{Right} ; TODO: not work. why?

close_win_menu:
{
    IfWinActive, ahk_exe SearchApp.exe
    {
        Send, ^{esc}
        Sleep 30
    }
    Return
}

move_foreground_chrome:
{
    IfWinExist, ahk_exe chrome.exe
    {
        WinActivate
        Sleep 100
    }
    Else
    {
        Run, chrome.exe
        winwaitactive, ahk_exe chrome.exe
    }
    Return
}

#If WinActive("Search ahk_class Windows.UI.Core.CoreWindow ahk_exe SearchApp.exe")
    ^+n::
    Gosub, close_win_menu
    Send #1
    Return

    ^l::
    Gosub, close_win_menu
    Gosub, move_foreground_chrome
    Send, ^l
    Return
#IfWinActive

#If WinActive("Program Manager ahk_class Progman ahk_exe Explorer.EXE")
    ^+n::Send #1
    ^l::
    Gosub, move_foreground_chrome
    Send, ^l
    Return
#IfWinActive

#If WinActive("ahk_class Shell_TrayWnd")
    ^+n::Send #1
    ^l::
    Gosub, move_foreground_chrome
    Send, ^l
    Return
#IfWinActive

; Alt + tab window
#IfWinExist, ahk_class MultitaskingViewFrame ; Windows 10
    !h::Send {Blind}!{Left}
    !j::Send {Blind}!{Down}
    !k::Send {Blind}!{Up}
    !l::Send {Blind}!{Right}
#IfWinExist

; Win + tab window
#IfWinActive, Task View ahk_exe Explorer.exe
    h::Send {Left}
    j::Send {Down}
    k::Send {Up}
    l::Send {Right}
#IfWinActive

;IsWinTabMenu := false
;#Tab::
;    Send #{Tab}
;    IsWinTabMenu := true
;    return
;#If (IsWinTabMenu)
;    h::Send {Left}
;    j::Send {Down}
;    k::Send {Up}
;    l::Send {Right}
;    Enter::
;        Send {Enter}
;        IsWinTabMenu := false
;    Return
;#If
