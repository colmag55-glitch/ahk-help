;🛠 ================= 🔧 LAST UPDATE FIXED 🔧 27/07/2026 ================= 👍
;Autohotkey-ver1.1.237
#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
ListLines Off


;--------------------------------------------------------
   
;              ⚙️ Script ahk to exe  Only ⚙️

;FileCreateDir,%A_ScriptDir%\BUTTON ICON
;------------------------------------------------------
;FileInstall,BUTTON ICON\Browse.png,%A_WorkingDir%\Browse.png
;FileInstall,BUTTON ICON\Scan.png,%A_WorkingDir%\Scan.png
;FileInstall,BUTTON ICON\Auto Select.png,%A_WorkingDir%\Auto Select.png
;FileInstall,BUTTON ICON\Move to  Bin.png,%A_WorkingDir%\Move to  Bin.png
;------------------------------------------------------

WinSet, TransColor, GREEN
Gui, Font, s13 Bold, Comic Sans MS
Gui, Color, 0F0F0F


Gui, Add, Picture, x12 y300 w120 h30 +BackgroundTrans GBUTTON1, __BTN1__
;Gui, Add, Text, x12 y300 w120 h30 +BackgroundTrans, __TEXT1__

Gui, Add, Picture, x172 y300 w120 h30 +BackgroundTrans GBUTTON2, __BTN2__
;Gui, Add, Text, x172 y300 w120 h30 +BackgroundTrans, __TEXT2__

Gui, Add, Picture, x322 y300 w120 h30 +BackgroundTrans GBUTTON3, __BTN3__
;Gui, Add, Text, x322 y300 w120 h30 +BackgroundTrans, __TEXT3__

Gui, Show, x127 y87 h379 w500, New GUI Window
Return
;h379 w500
;=========================================
; BUTTON HANDLERS
;=========================================

BUTTON1:
    MsgBox, You pressed BUTTON.1
    
    ;-------------------------------------
    ; Add BUTTON1 code here ✔ 
    ;-------------------------------------

return


BUTTON2:
    MsgBox, You pressed BUTTON.2
    
    ;-------------------------------------
    ; Add BUTTON2 code here ✔ 
    ;-------------------------------------

return


BUTTON3:
    MsgBox, You pressed BUTTON.3
    
    ;-------------------------------------
    ; Add BUTTON3 code here ✔ 
    ;-------------------------------------

return
;if (CurrentState)

{




}




^esc::exitApp

GuiClose:
ExitApp

;=================== 🔧 END OF Program 🔧 ===============

