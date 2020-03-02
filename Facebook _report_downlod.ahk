#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Downloading reporting file


Run, C:\Program Files (x86)\Mozilla Firefox\firefox.exe "https://business.facebook.com/ads/manager/account/ads/?act=1111111&pid=p1&report_spec=1111111&business_id=1111111"


WinWaitActive, Ads Manager - Mozilla Firefox, , 50000
if ErrorLevel <> 0
{
	MsgBox, WinWait timed out.
	return
}
else
Sleep, 20000
Click 1793, 383 
Sleep, 5000
Send, {Enter}

Sleep, 10000



SetWorkingDir, C:\Users\blabla\Downloads
Loop, Files, *Blabla-Performance_report*.csv, R
{
	MostRecent := (A_Index = 1 ? A_LoopFileFullPath : MostRecent)
	FileGetTime MostRecentTime, %MostRecent%, C
	MostRecent := (A_LoopFileTimeModified > MostRecentTime ? A_LoopFileFullPath : MostRecent)
}
FileCopy , %MostRecent%, C:\Users\BlaBla\Blabla_report.csv, 1 


Sleep, 10000


; Blabla - creating report

myFile = C:\Users\BlaBla\Blabla_report_create.xlsm

oExcel := ComObjCreate("Excel.Application")
oExcel.Visible := 1 
oWorkbook := oExcel.Workbooks.Open(myFile)
oWorkbook.RefreshAll()

Sleep, 15000


Run, C:\BlaBla\Report_Blabla_mail.msg


Escape::
ExitApp
Return