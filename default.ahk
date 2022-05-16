#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Esc::
SoundPlay, *-1, 1
Send, {Esc}
return

#i::
Run,http://www.google.co.jp/search?q=%Clipboard%
return

!j::Send {Down}
!k::Send {Up}
!h::Send {Left}
!l::Send {Right}

!i::Send !{Right}
!o::Send !{Left}

^h::Send {BS}
^m::Send {Enter}

IsWinTabMenu := false
#Tab::
    Send #{Tab}
    IsWinTabMenu := true
    return
#If (IsWinTabMenu)
    h::Send {Left}
    j::Send {Down}
    k::Send {Up}
    l::Send {Right}
    Enter::
        Send {Enter}
        IsWinTabMenu := false
    Return
    Space::
        Send {Space}
        IsWinTabMenu := false
    Return
#If
