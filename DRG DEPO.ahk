#InstallKeybdHook
#InstallMouseHook
#UseHook On
#Warn
#SingleInstance, Force

depot = 0
pressed = 0
axe = 0

F4::
     Suspend
     Pause,, 1

return

$XButton1::
     depot = 1
     while (depot = 1){
          Send, e
          sleep, 100
          ;Send, {RButton}
     }
return

$XButton1 UP::
     depot = 0
return

$Xbutton2::
     axe = 1
     while (axe = 1) {
          Send, {MButton}
          sleep, 100
          Send, {RButton}
     }
Return

$Xbutton2 UP::
     axe = 0
Return
