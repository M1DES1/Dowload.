#NoTrayIcon
#SingleInstance force
#NoEnv

versiontxt=%A_ScriptDir%\version.txt

file3=%A_ScriptDir%\assets\tabs_icons\AutoUpdate.gif


Loop, Read, %versiontxt%  
{
    if InStr(A_LoopReadLine, "1.1b") ;Wersja txt
{
        

        
    run,%A_ScriptDir%\StarGłówny.exe
exitapp






}
         Else{

            FileDelete, %A_ScriptDir%\update.exe
             UrlDownloadToFile ,https://github.com/M1DES1/Dowload./raw/main/update.exe ,%A_ScriptDir%\update.exe
            
run, %A_ScriptDir%\update.exe
exitapp



        }
        



}
return



