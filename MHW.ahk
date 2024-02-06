#InstallKeybdHook
#InstallMouseHook
#UseHook On
#Warn
#SingleInstance, Force

skip = 0

F10::
     Suspend
     Pause,, 1
return

*r::
     if WinActive("ahk_exe MonsterHunterWorld.exe"){
          skip = 1
          while (GetKeyState("r", "P") AND WinActive("ahk_exe MonsterHunterWorld.exe")) {
               Send, {F Down}
               Send, {F Up}
               sleep, 50
          }
     }
     Else {
          Send, {r}
     }
Return

*r UP::
     skip = 0
Return

*`::
     if WinActive("ahk_exe MonsterHunterWorld.exe"){  
          Send, {m DOWN}
          Send, {m UP}
     }
     Else {
          Send, {``}
     }