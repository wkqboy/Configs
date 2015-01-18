@ECHO off 
color 0A
cls
ECHO =======================================================================
ECHO.   
ECHO  put this file in Bxx folder
ECHO.   
ECHO  2014.04.21   first version of batch released compatible xp ^& Win2K3
ECHO  2014.04.23   compatible with win7 UAC privilege limitation
ECHO  2014.04.24   compatible 64bit CATIA program
ECHO               Fix missing CATKnowledgePath parametric of env file
ECHO =======================================================================
ECHO waiting...... 
if exist "%~dp0intel_a" set InstallDir=%~dp0intel_a
if exist "%~dp0win_b64" set InstallDir=%~dp0win_b64
%InstallDir%\code\bin\cnext /regserver
set ExistFolds=0
setlocal enabledelayedexpansion
if exist "%~dp0ENV_tyc600" (
for /f "delims=" %%i in ('dir /ad /b "%~dp0ENV_tyc600" ') do (
set /a a+=1
)
set ExistFolds=!a!
)
setlocal disabledelayedexpansion
md "%~dp0ENV_tyc600\Config_%ExistFolds%\CATSettings"
if exist "%Tmp%\tyc600.vbs" del /f/q "%Tmp%\tyc600.vbs"
>>%Tmp%\tyc600.vbs echo For Each objOS in GetObject("winmgmts:").InstancesOf("Win32_OperatingSystem")
>>%Tmp%\tyc600.vbs echo     If InStr(objOS.Caption,"XP") = 0 And InStr(objOS.Caption,"2003") = 0 Then
>>%Tmp%\tyc600.vbs echo         If WScript.Arguments.length = 0 Then
>>%Tmp%\tyc600.vbs echo             Dim objShell
>>%Tmp%\tyc600.vbs echo             Set objShell = CreateObject("Shell.Application")
>>%Tmp%\tyc600.vbs echo             objShell.ShellExecute "wscript.exe", Chr(34) ^& WScript.ScriptFullName ^& Chr(34) ^& " uac", "", "runas", 1
>>%Tmp%\tyc600.vbs echo         End If
>>%Tmp%\tyc600.vbs echo     End If
>>%Tmp%\tyc600.vbs echo Next
>>%Tmp%\tyc600.vbs echo Set fso = WScript.CreateObject("Scripting.FileSystemObject")
>>%Tmp%\tyc600.vbs echo CATVersion=Mid(fso.GetFileVersion("%InstallDir%\code\bin\CNEXT.exe"),3,2)
>>%Tmp%\tyc600.vbs echo CATR="CATIA_R" ^& CATVersion ^& "_%ExistFolds%"
>>%Tmp%\tyc600.vbs echo Set WshShell = WScript.CreateObject("WScript.Shell")
>>%Tmp%\tyc600.vbs echo set oShellLink = WshShell.CreateShortcut("%~dp0" ^& CATR ^& ".lnk")
>>%Tmp%\tyc600.vbs echo oShellLink.TargetPath ="""%InstallDir%\code\bin\CATSTART.exe"""
>>%Tmp%\tyc600.vbs echo oShellLink.Arguments =" -run " ^& Chr(34) ^& "CNEXT.exe" ^&  Chr(34) ^& " -env " ^& CATR ^& " -direnv " ^&  Chr(34) ^& "%~dp0ENV_tyc600\Config_%ExistFolds%" ^& Chr(34) ^& " -nowindow"
>>%Tmp%\tyc600.vbs echo oShellLink.WindowStyle = 1
>>%Tmp%\tyc600.vbs echo oShellLink.IconLocation = "%InstallDir%\code\bin\CNEXT.exe,0"
>>%Tmp%\tyc600.vbs echo oShellLink.Description = "CATIA shortcut created by tyc600"
>>%Tmp%\tyc600.vbs echo oShellLink.Save
>>%Tmp%\tyc600.vbs echo WScript.Echo CATVersion
for /f "delims=" %%i in ('cscript //nologo "%Tmp%\tyc600.vbs" ') do set "CATVersion=%%i"
Set CATVersion=%CATVersion:~,2%
REG ADD "HKLM\SOFTWARE\Dassault Systemes\B%CATVersion%\0" /V "DEST_FOLDER" /T REG_EXPAND_SZ /D "%~dp0\" /f
REG ADD "HKLM\SOFTWARE\Dassault Systemes\B%CATVersion%\0" /V "DEST_FOLDER_OSDS" /T REG_EXPAND_SZ /D "%InstallDir%" /f
REG ADD "HKLM\SOFTWARE\Dassault Systemes\B%CATVersion%\0" /V "IDENT" /T REG_EXPAND_SZ /D "tyc600" /f
REG ADD "HKLM\SOFTWARE\Dassault Systemes\B%CATVersion%\0" /V "OSNAME" /T REG_EXPAND_SZ /D "INTEL" /f
Set ENVConfigName="%~dp0ENV_tyc600\Config_%ExistFolds%\CATIA_R%CATVersion%_%ExistFolds%.txt"
>>%ENVConfigName% echo !----------------------------------------------------------
>>%ENVConfigName% echo !   DASSAULT SYSTEMES  -  V5 ENVIRONMENT FILE
>>%ENVConfigName% echo !----------------------------------------------------------
>>%ENVConfigName% echo ! MODE : Global
>>%ENVConfigName% echo ! TYPE : CATIA
>>%ENVConfigName% echo ! TMSTMP : created by tyc600
>>%ENVConfigName% echo !----------------------------------------------------------
>>%ENVConfigName% echo CATInstallPath=%InstallDir%
>>%ENVConfigName% echo CATDLLPath=%InstallDir%\code\bin
>>%ENVConfigName% echo CATICPath=%InstallDir%\code\productIC
>>%ENVConfigName% echo CATCommandPath=%InstallDir%\code\command
>>%ENVConfigName% echo CATDictionaryPath=%InstallDir%\code\dictionary
>>%ENVConfigName% echo CATDocView=%InstallDir%\doc
>>%ENVConfigName% echo CATReffilesPath=%InstallDir%\reffiles
>>%ENVConfigName% echo CATFontPath=%InstallDir%\resources\fonts
>>%ENVConfigName% echo CATGalaxyPath=%InstallDir%\resources\galaxy
>>%ENVConfigName% echo CATGraphicPath=%InstallDir%\resources\graphic;%InstallDir%\resources\graphic\icons;%InstallDir%\resources\graphic\figures;%InstallDir%\resources\graphic\splashscreens;%InstallDir%\resources\graphic\symbols;%InstallDir%\resources\graphic\textures
>>%ENVConfigName% echo CATMsgCatalogPath=%InstallDir%\resources\msgcatalog
>>%ENVConfigName% echo CATFeatureCatalogPath=%InstallDir%\resources\featurecatalog
>>%ENVConfigName% echo CATDefaultCollectionStandard=%InstallDir%\resources\standard
>>%ENVConfigName% echo CATKnowledgePath=%InstallDir%\resources\knowledge
>>%ENVConfigName% echo CATStartupPath=%InstallDir%\startup
>>%ENVConfigName% echo CATW3ResourcesPath=%InstallDir%\docs
>>%ENVConfigName% echo CATReferenceSettingPath=
>>%ENVConfigName% echo CATUserSettingPath=%~dp0ENV_tyc600\Config_%ExistFolds%\CATSettings
>>%ENVConfigName% echo CATCollectionStandard=
>>%ENVConfigName% echo CATTemp=CSIDL_LOCAL_APPDATA\DassaultSystemes\CATTemp
>>%ENVConfigName% echo CATMetasearchPath=DSKEY_TMPDIR
>>%ENVConfigName% echo CATW3PublishPath=DSKEY_TMPDIR
>>%ENVConfigName% echo CATSharedWorkbookPath=DSKEY_TMPDIR
>>%ENVConfigName% echo CATErrorLog=CSIDL_LOCAL_APPDATA\DassaultSystemes\CATTemp\error.log
>>%ENVConfigName% echo CATReport=CSIDL_LOCAL_APPDATA\DassaultSystemes\CATReport
>>%ENVConfigName% echo CATDisciplinePath=
>>%ENVConfigName% echo USER_HOME=CSIDL_PERSONAL
>>%ENVConfigName% echo JAVA_HOME=%JAVA_HOME%
>>%ENVConfigName% echo CLASSPATH_JDBC=
>>%ENVConfigName% echo CLASSPATH=%CLASSPATH_JDBC%;%CLASSPATH%
>>%ENVConfigName% echo PATH=%InstallDir%\code\bin;%InstallDir%\code\command;%%JAVA_HOME%%\bin;%%PATH%%
>>%ENVConfigName% echo CATNoStartDocument=no
>>%ENVConfigName% echo CNEXTSPLASHSCREEN=no
>>%ENVConfigName% echo CNEXTBACKGROUND=no
>>%ENVConfigName% echo L_WILSON_LAN=1
>>%ENVConfigName% echo CGM_ROLLINGOFFSET=1
>>%ENVConfigName% echo TAILLE_MEMOIRE_CHOISIE=1
if exist "%Tmp%\tyc600.vbs" del /f/q "%Tmp%\tyc600.vbs"