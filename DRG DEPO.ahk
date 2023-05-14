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
     if (depot = 0){
          depot = 1
     }
     else if (depot = 1){
          depot = 0
     }
Return

$Xbutton2::
     if (axe = 0){
          axe = 1
     }
     else if (depot = 1){
          axe = 0
     }
Return


$e::
     check:
     if (depot = 1){
          pressed := GetKeyState("e","P")
          while (pressed = 1) {
               Send, e
               sleep, 20
               Send, {RButton}
               Gosub, check
     }
     }    
     else {
          send, e
     }

$g::
     jump:
     if (depot = 1){
          pressed := GetKeyState("g","P")
          while (pressed = 1) {
               Send, {MButton}
               sleep, 20
               Send, {RButton}
               Gosub, jump
     }
     }    
     else {
          send, e
     }
