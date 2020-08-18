/*
 *
 * Grounded Development Level Unlocker v1.03
 * - by VooDooShamane
 *
*/


#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
#NoTrayIcon

        Global SelectedFile := ""
        Global pakfmd5 := ""
        Global pakver := ""
        Global pakpat := ""
        Global buildv := ""

#Include %A_ScriptDir%\ControlColor.ahk


DevlHeader = %A_Temp%\Dev_lvl_unlocker_Header.jpg
FileInstall, res\Dev_lvl_unlocker_Header.jpg, %DevlHeader%, Overwrite


Gui +hWndhMainWnd -MinimizeBox -MaximizeBox -DPIScale
Gui Add, Picture, x0 y0 w324 h94 0x6, %DevlHeader%
Gui Add, GroupBox, x4 y97 w316 h125, Patch Options
Gui Add, GroupBox, x4 y224 w316 h168, Info && Log Text
Gui Add, Radio, vunlradio x14 y144 w155 h23 +Disabled, Unlock Development Level
Gui Add, Radio, vresradio x187 y144 w125 h23 +Disabled, Restore Original File
Gui Add, Edit, vFileBox x9 y116 w270 h21 +ReadOnly
Gui Add, Button, hWndhBtnOpen vOpen gSelectFile x279 y115 w38 h23 +Default, Open
Gui Add, Progress, vprogres x9 y196 w306 h15 -Smooth, 0
Gui Add, Button, vApplypat gPatchPak x9 y167 w306 h23 +Disabled, Apply selected Patch
Gui Add, Text, x0 y396 w327 h2 0x10
Gui Add, Text, x7 y401 w313 h19, Version 1.03 by VooDooShamane
Gui Add, Edit, hWndhEdtValue2 vLogInfo x8 y239 w308 h146 +ReadOnly +Multi +0x40
ControlColor(hEdtValue2, hMainWnd, 0x010101, 0xE1E1E1)


Gui Show, w324 h419, Grounded Dev lvl Unlocker
Control, EditPaste, Grounded Development Level Unlocker v1.03 Log Start`r`n-----------------------------------------------------------------------------------------------`r`n, Edit2, Grounded Dev lvl Unlocker
GuiControl,,FileBox, Grounded\Maine\Content\Paks\Maine-WindowsNoEditor.pak


Return

GuiClose:
FileDelete, %DevlHeader%
    ExitApp



SelectFile() {
GuiControl,,progres
FileSelectFile, SelectedFile, 3, , , Maine-WindowsNoEditor.pak
If !SelectedFile
return
 
    GuiControl,,FileBox, %SelectedFile%
    Gui, Submit, NoHide

    If not (return WriteAccess( SelectedFile ) = 1) 
    { ; Check if SelectedFile has write access
    MsgBox, 48, , No writing allowed to File!`nPlease set this App to open with Admin Rights.`nOr move File to a temporary Directory with writing Privileges.
    Control, EditPaste, `r`nNo writing allowed to File!`r`n`r`nPlease set this App to open with Admin Rights.`r`nOr move File to a temporary Directory with writing Privileges.`r`n, Edit2, Grounded Dev lvl Unlocker
    return
    }

    Control, EditPaste, File needs to be analyzed!`r`n, Edit2, Grounded Dev lvl Unlocker

    pakfmd5:= % FileMD5( SelectedFile, 8 ) ;Calculate MD5

    If (pakfmd5 = "B9E081AD39DFA44ED586C807D40372FB")
    {
        pakver := "1.1.7.0"
        pakpat := "dev"
        buildv := "v0.1.0.2168 (Build 5337632)"
        GuiControl, Enable, resradio
        GuiControl, Enable, applypat
        GuiControl, Enable, progres
        GuiControl, Disable, unlradio
        GuiControl, Focus, Applypat
        GuiControl,, resradio, 1
        Control, EditPaste, Analyzing done!`r`n`r`nGame Version = %buildv%`r`nPak Version    = %pakver%`r`nCurrent Patch = Dev unlocked`r`n, Edit2, Grounded Dev lvl Unlocker
    }
    else
        {
        If (pakfmd5 = "FA350E0DC6A81283316A693B0FD6992B") 
        {
            pakver := "1.1.7.0"
            pakpat := "ori"
            buildv := "v0.1.0.2168 (Build 5337632)"
            GuiControl, Enable, applypat
            GuiControl, Enable, unlradio
            GuiControl, Enable, progres
            GuiControl, Disable, resradio
            GuiControl, Focus, Applypat
            GuiControl,, unlradio, 1
            Control, EditPaste, Analyzing done!`r`n`r`nGame Version = %buildv%`r`nPak Version    = %pakver%`r`nCurrent Patch = Original Pak File`r`n, Edit2, Grounded Dev lvl Unlocker
        }
        else
            {
            If (pakfmd5 = "C4D47045864EF71F3107E2BBBF4AA6C2") 
            {
                pakver := "1.1.8.0"
                pakpat := "dev"
                buildv := "v0.1.1.2193 (Build 5385723)"
                GuiControl, Enable, resradio
                GuiControl, Enable, applypat
                GuiControl, Enable, progres
                GuiControl, Disable, unlradio
                GuiControl, Focus, Applypat
                GuiControl,, resradio, 1
                Control, EditPaste, Analyzing done!`r`n`r`nGame Version = %buildv%`r`nPak Version    = %pakver%`r`nCurrent Patch = Dev unlocked`r`n, Edit2, Grounded Dev lvl Unlocker
            }
            else
                {
                If (pakfmd5 = "AAE8673815D871483A4A8E5A72290202") 
                {
                    pakver := "1.1.8.0"
                    pakpat := "ori"
                    buildv := "v0.1.1.2193 (Build 5385723)"
                    GuiControl, Enable, applypat
                    GuiControl, Enable, unlradio
                    GuiControl, Enable, progres
                    GuiControl, Disable, resradio
                    GuiControl, Focus, Applypat
                    GuiControl,, unlradio, 1
                    Control, EditPaste, Analyzing done!`r`n`r`nGame Version = %buildv%`r`nPak Version    = %pakver%`r`nCurrent Patch = Original Pak File`r`n, Edit2, Grounded Dev lvl Unlocker
                }
                else
                    {
                    If (pakfmd5 = "B18E79DA09CA58392B11B7442F4C7506") 
                    {
                        pakver := "1.1.9.0"
                        pakpat := "dev"
                        buildv := "v0.1.2.2215 (Build 5408963)"
                        GuiControl, Enable, resradio
                        GuiControl, Enable, applypat
                        GuiControl, Enable, progres
                        GuiControl, Disable, unlradio
                        GuiControl, Focus, Applypat
                        GuiControl,, resradio, 1
                        Control, EditPaste, Analyzing done!`r`n`r`nGame Version = %buildv%`r`nPak Version    = %pakver%`r`nCurrent Patch = Dev unlocked`r`n, Edit2, Grounded Dev lvl Unlocker
                    }
                    else
                        {		
                        If (pakfmd5 = "49628B95514D40F506B6DF0DBDAC975A") 
                        {
                            pakver := "1.1.9.0"
                            pakpat := "ori"
                            buildv := "v0.1.2.2215 (Build 5408963)"
                            GuiControl, Enable, applypat
                            GuiControl, Enable, unlradio
                            GuiControl, Enable, progres
                            GuiControl, Disable, resradio
                            GuiControl, Focus, Applypat
                            GuiControl,, unlradio, 1
                            Control, EditPaste, Analyzing done!`r`n`r`nGame Version = %buildv%`r`nPak Version    = %pakver%`r`nCurrent Patch = Original Pak File`r`n, Edit2, Grounded Dev lvl Unlocker
                        }
                        else
                            {
        
        pakver := ""
        pakpat := ""
        buildv := ""
        GuiControl, Disable, applypat
        GuiControl, Disable, unlradio
        GuiControl, Disable, resradio
        GuiControl, Disable, progres
        GuiControl, Focus, SelectFile
        MsgBox, 48, , Wrong File or unsupported Pak File!
        Control, EditPaste, Analyzing done!`r`n`r`nWrong File or unsupported Pak File!`r`n`r`nCurrent supported Game versions:`r`nv0.1.0.2168 (Build 5337632)`r`nv0.1.1.2193 (Build 5385723)`r`nv0.1.2.2215 (Build 5408963)`r`n`r`nCheck if there is an Update to the Patcher!`r`n, Edit2, Grounded Dev lvl Unlocker
        return   


                        }
                    }
                }
            }
        }
    }
}



PatchPak() { ; Patch-Unpatch Function
    If (pakpat = "ori")
    {
        p := "a"
    }
    else
        {
        p := "u"
        }
	FileInstall, res\ApplyPPF3.exe, %A_Temp%\ApplyPPF3.exe, Overwrite
	FileInstall, res\1.1.7.0_pak_dev+undo.ppf, %A_Temp%\1.1.7.0_pak_dev+undo.ppf, Overwrite
	FileInstall, res\1.1.8.0_pak_dev+undo.ppf, %A_Temp%\1.1.8.0_pak_dev+undo.ppf, Overwrite
    FileInstall, res\1.1.9.0_pak_dev+undo.ppf, %A_Temp%\1.1.9.0_pak_dev+undo.ppf, Overwrite
	RunWait "%A_Temp%\ApplyPPF3.exe" "%p%" "%SelectedFile%" "%A_Temp%\%pakver%_pak_dev+undo.ppf", , Hide
	FileDelete, %A_Temp%\ApplyPPF3.exe
	FileDelete, %A_Temp%\1.1.7.0_pak_dev+undo.ppf
	FileDelete, %A_Temp%\1.1.8.0_pak_dev+undo.ppf
    FileDelete, %A_Temp%\1.1.9.0_pak_dev+undo.ppf
	If (p = "u") {
    Control, EditPaste, `r`nPatch Done!`r`nOriginal Game files restored.`r`nTo verify patch`, open Pak File again`r`n`r`n, Edit2, Grounded Dev lvl Unlocker
		} else {
    Control, EditPaste, `r`nPatch Done!`r`nDevelopment Level unlocked.`r`nTo verify patch`, open Pak File again`r`n`r`n, Edit2, Grounded Dev lvl Unlocker    
	}GuiControl,,progres,100
Return
}



WriteAccess( F ) { ; Writeaccess Function
  Return ((h:=DllCall("_lopen",Str,F,Int,1)) > 0 ? 1 : 0) (DllCall("_lclose",Int,h)+NULL)
}


FileMD5( path = "", chunkSize = 4 ) {
ControlGetText, LogInfo, Edit2, Grounded Dev lvl Unlocker

	if ( chunkSize < 0 || chunkSize > 8 ) {
		 chunkSize := 4
	}
	chunkSize :=  2 ** (18 + chunkSize )

    f := DllCall( "CreateFile", Str, path, UInt, 0x80000000, Int, 3, Int, 0, Int, 3, Int, 0, Int, 0 )
	If (f < 1) {
        Return, f
    }

    VarSetCapacity( Buffer, chunkSize, 0 )
    DllCall( "GetFileSizeEx", UInt, f, Str, Buffer )
    fileSize := NumGet( Buffer, 0, "Int64" )

    VarSetCapacity( MD5_CTX, 104, 0 )
    DllCall( "advapi32\MD5Init", Str, MD5_CTX )

	max := ( fileSize // chunkSize + !! Mod( fileSize, chunkSize ) )
    Loop %max% {
        DllCall( "ReadFile" , UInt,  f, Str, Buffer, UInt, chunkSize, UIntP, bytesRead, UInt, 0 )
        DllCall( "advapi32\MD5Update", Str, MD5_CTX, Str, Buffer, UInt, bytesRead )
        GuiControl,,LogInfo
        Control, EditPaste, %LogInfo%Analyzing Chunk %A_Index% of %max% from selected File`r`n, Edit2, Grounded Dev lvl Unlocker
    }

    DllCall( "advapi32\MD5Final",  Str, MD5_CTX )
    DllCall( "CloseHandle", UInt, f )

    Hex := "123456789ABCDEF0"
    Loop % StrLen( Hex ){
        N := NumGet( MD5_CTX, 87 + A_Index, "Char")
        MD5 := MD5 SubStr(Hex, N >> 4, 1) SubStr(Hex, N & 15, 1)
    }
    Return MD5

}