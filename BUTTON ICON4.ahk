;??================= LAST UPDATE FIXED 27/07/2026 =================??
;Autohotkey-ver1.1.237
#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

;FileCreateDir,%A_ScriptDir%\BUTTON ICON
;SetWorkingDir,%A_ScriptDir%\BUTTON ICON
;------------------------------------------------------
;FileInstall,BUTTON ICON\BUTTON ICON,%A_WorkingDir%\BUTTON ICON
;FileInstall,BUTTON ICON\movie.ico,%A_WorkingDir%\movie.ico



WinSet, TransColor, GREEN
Gui, Font, s13 Bold, Comic Sans MS
Gui, Color, 0F0F0F

;------------------------------------------
; Variables ??
;------------------------------------------

SourceFile := ""
TargetFile := ""

DefaultIcon := "%A_WorkingDir%\BUTTON ICON\Backlog.png"

BTN1 := DefaultIcon
BTN2 := DefaultIcon
BTN3 := DefaultIcon

;------------------------------------------
; GUI  ???
;------------------------------------------
;C73FBFD ReadOnly
;Gui, Add, GroupBox, x12 y-1 w580 h380 , 
;Gui, Add, GroupBox, x2 y49 w150 h270 , 
Gui, Add, GroupBox, x2 y-1 w590 h70 , 

Gui, Font, c75FA8D s11
Gui, Add, Edit, x150 y22 w420  vScriptPath ReadOnly 
Gui, Add, Picture, x20 y20 w120 h30 gSelectScript +BackgroundTrans, %A_WorkingDir%\BUTTON ICON\Select Script1.png

Gui, Add, Text, x20 y70 c75FA8D, Button 1
Gui, Add, Picture, x20 y90 w120 h35 Border vPreview1
Gui, Add, Text, x300 y100 w260 vName1
Gui, Add, Picture, x160 y95 w120 h30 gChoose1, %A_WorkingDir%\BUTTON ICON\Choose Image1.png

Gui, Add, Text, x20 y150 c75FA8D, Button 2
Gui, Add, Picture, x20 y170 w120 h35 Border vPreview2
Gui, Add, Text, x300 y180 w260 vName2
Gui, Add, Picture, x160 y175 w120 h30 gChoose2, %A_WorkingDir%\BUTTON ICON\Choose Image1.png

Gui, Add, Text, x20 y230 c75FA8D, Button 3
Gui, Add, Picture, x20 y250 w120 h35 Border vPreview3
Gui, Add, Text, x300 y260 w260 vName3
Gui, Add, Picture, x160 y255 w120 h30 gChoose3, %A_WorkingDir%\BUTTON ICON\Choose Image1.png

Gui, Add, Picture, x220 y320 w180 h40 gSaveScript, %A_WorkingDir%\filesFromButtonMakerDemo\Saved Buttons\Save Modifie Script.png

;Gui, Add, Picture, x220 y320 w180 h40 gSaveScript, %A_WorkingDir%\filesFromButtonMakerDemo\Saved Buttons\BUTTON 180X40.PNG


Gui, Font, FFFD55 s11

Gui, Font, s11 Bold Gui Gui, Segoe UI
Gui, Add, Text, c75FA8D, Button 1 Text
Gui, Add, Edit, vTEXT1 w200

Gui, Add, Text, c75FA8D, Button 2 Text
Gui, Add, Edit, vTEXT2 w200

Gui, Add, Text, c75FA8D, Button 3 Text
Gui, Add, Edit, vTEXT3 w200

Gui, Add, Picture, x450 y350 w120 h30 +BackgroundTrans gOpenHelp, %A_WorkingDir%\BUTTON ICON\Help files1..png


GuiControl,,Preview1,*w120 *h35 %DefaultIcon%
GuiControl,,Preview2,*w120 *h35 %DefaultIcon%
GuiControl,,Preview3,*w120 *h35 %DefaultIcon%

GuiControl,,Name1,Backlog.png
GuiControl,,Name2,Backlog.png
GuiControl,,Name3,Backlog.png

Gui, Show, w600 h390, Button Script Builder v1.2
Return

;==========================================
SelectScript:  
;==========================================

FileSelectFile, SourceFile, 3,, Select AutoHotkey Script, *.ahk

if (SourceFile = "")
    Return

GuiControl,, ScriptPath, %SourceFile%

SplitPath, SourceFile, Name, Dir, Ext, NameNoExt
TargetFile := Dir "\" NameNoExt "_modified." Ext

Return

;==========================================
Choose1:
;==========================================

FileSelectFile, SelectedFile, 3, %A_WorkingDir%\BUTTON ICON\, Select Button 1, Images (*.png;*.jpg;*.bmp)

if (SelectedFile = "")
    Return

BTN1 := SelectedFile

GuiControl,,Preview1,*w120 *h35 %BTN1%

SplitPath, BTN1, OnlyName
GuiControl,,Name1,%OnlyName%

Return

;==========================================
Choose2:
;==========================================

FileSelectFile, SelectedFile, 3, %A_WorkingDir%\BUTTON ICON\, Select Button 2, Images (*.png;*.jpg;*.bmp)

if (SelectedFile = "")
    Return

BTN2 := SelectedFile

GuiControl,,Preview2,*w120 *h35 %BTN2%

SplitPath, BTN2, OnlyName
GuiControl,,Name2,%OnlyName%

Return

;==========================================
Choose3:
;==========================================

FileSelectFile, SelectedFile, 3, %A_WorkingDir%\BUTTON ICON\, Select Button 3, Images (*.png;*.jpg;*.bmp)

if (SelectedFile = "")
    Return

BTN3 := SelectedFile

GuiControl,,Preview3,*w120 *h35 %BTN3%

SplitPath, BTN3, OnlyName
GuiControl,,Name3,%OnlyName%

Return

;==========================================
SaveScript:
;==========================================

Gui, Submit, NoHide

if (SourceFile = "")
{
    MsgBox, 48, Error, Please select a script first.
    Return
}

FileRead, Script, %SourceFile%

Script := StrReplace(Script, "__BTN1__", BTN1)
Script := StrReplace(Script, "__BTN2__", BTN2)
Script := StrReplace(Script, "__BTN3__", BTN3)

Script := StrReplace(Script, "__TEXT1__", TEXT1)
Script := StrReplace(Script, "__TEXT2__", TEXT2)
Script := StrReplace(Script, "__TEXT3__", TEXT3)

FileDelete, %TargetFile%
FileAppend, %Script%, %TargetFile%

MsgBox, 64, Finished, Modified script saved.`n`n%TargetFile%

Return

OpenHelp:
Run, %A_ScriptDir%\Help.pdf
Return

^esc::exitApp

GuiClose:
ExitApp

