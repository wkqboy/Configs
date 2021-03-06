'==============================================================================
' ProE configture tool
' Description: This tool can apply my ProE configture to current mechine
' Contact me : wkqboy@gmail.com
' Copyright ©2014 Wang Keqin, All Rights Reserved
'==============================================================================
Language="VBScript"

'---------------------------------------------------------------------- options
gMakeBackup = true
gApplySup   = true
gApplyPro   = true
gApplyWin   = true

'------------------------------- paste rely code here if you need a single file
sub include(code)
    set fso = createObject("scripting.fileSystemObject")
    currPath = fso.getFolder(".")
    fullPath = fso.getAbsolutePathName(currPath & "\" & code)
    if fso.fileExists(fullPath) then
        set f = fso.openTextFile(fullPath)
        s = f.readAll()
        f.close()
        executeGlobal(s)
    end if
end sub

'------------------------------------------------------------------------------
function getObj(str)
    objName = ""
    select case str
        case "FSO"
            objName = "scripting.fileSystemObject"
        case "SHELL"
            objName = "shell.application"
        case "WSHELL"
            objName = "wscript.shell"
        case "EXPLORER"
            objName = "CabinetWClass.application"
        case "EXCEL"
            objName = "excel.application"
        case "WORD"
            objName = "word.application"
        case "PPT"
            objName = "powerPoint.application"
        case "IE"
            objName = "internetExplorer.application"
        case else
            objName = str
    end select

    err.clear
    on error resume next
    set getObj = getObject( ,objName)
    if err.number <> 0 then
        err.clear
        set getObj = nothing
        set getObj = createObject(objName)
    end if
    if err.number <> 0 then
        err.clear
        set getObj = nothing
    end if
end function

'------------------------------------------------------------------------------
function selectFolder(str)
    if str = "" then
        str = "Please select a folder"
    end if

    set objShell  = getObj("SHELL")
    set objFolder = objShell.browseForFolder(0, str, 0, 0)

    if objFolder is nothing then
        selectFolder = empty
    else
        selectFolder = objFolder.self.path
    end if
end function

'------------------------------------------------------------------------------
function getCurrentPath()
    set fso = getObj("FSO")
    getCurrentPath = fso.getFolder(".")
end function

'------------------------------------------------------------------------------
function isProeConfigFolder(folder)
    isProeConfigFolder = false

    set fso = getObj("FSO")
    configSup = fso.getAbsolutePathName(folder & "\configs\config.sup")
    configPro = fso.getAbsolutePathName(folder & "\configs\config.pro")
    'configWin = fso.getAbsolutePathName(folder & "\configs\config.win.1")
    if  fso.fileExists(configSup) and _
        fso.fileExists(configPro) then
        isProeConfigFolder = true
    end if
end function

'------------------------------------------------------------------------------
function yesNoCancelBox(text)
    yesNoCancelBox = msgbox(text, vbYesNoCancel + vbQuestion, "Please choose")
end function

function yesNoBox(text)
    yesNoBox = msgbox(text, vbYesNo + vbQuestion, "Please choose")
end function

function infoBox(text)
    infoBox = msgbox(text, vbInformation, "Information")
end function

'------------------------------------------------------------------------------
function isProeFolder(folder)
    isProeFolder = false

    set fso = getObj("FSO")
    fullName = fso.getAbsolutePathName(folder & "\bin\proe.exe")
    fullName2= fso.getAbsolutePathName(folder & "\Parametric\bin\parametric.exe")
    if fso.fileExists(fullName) or fso.fileExists(fullName2) then
        isProeFolder = true
    end if
end function

'------------------------------------------------------------------------------
function proeMakeBackup(target, backupSup, backupPro, backupWin)
    proeMakeBackup =false

    if not isProeFolder(target) then
        exit function
    end if

    destSup = target & "\text\config.sup"
    destPro = target & "\text\config.pro"
    destWin = target & "\text\config.win.99"

    if getProeVersion(target) = "31" then 'creo3
        destSup = target & "\Common Files\text\config.sup"
        destPro = target & "\Common Files\text\config.pro"
        destWin = target & "\Common Files\text\config.win.99"
    end if

    supBak = destSup & ".bak"
    proBak = destPro & ".bak"
    winBak = destWin & ".bak"

    set fso = getObj("FSO")
    if backupSup and fso.fileExists(destSup) then
        content = readFile(destSup)
        if trim(getPropValue(content, "Author","","")) <> "WKQ" then
            deleteIfExist(supBak)
            call fso.moveFile(destSup, supBak)
            proeMakeBackup = true
        end if
    end if

    if backupPro and fso.fileExists(destPro) then
        content = readFile(destPro)
        if trim(getPropValue(content, "Author", "", "")) <> "WKQ" then
            deleteIfExist(proBak)
            call fso.moveFile(destPro, proBak)
            proeMakeBackup = true
        end if
    end if

    'if backupWin and fso.fileExists(destWin) then
    '    deleteIfExist(winBak)
    '    call fso.moveFile(destWin, winBak)
    '    proeMakeBackup = true
    'end if
end function

'------------------------------------------------------------------------------
' 24: proe3
' 28: proe5
' 31: creo3
function getProeVersion(baseFolder)
    getProeVersion = empty

    set fso = getObj("FSO")
    fullName = fso.getAbsolutePathName(baseFolder & "\bin\proe.exe")
    fullName2= fso.getAbsolutePathName(baseFolder & "\Parametric\bin\parametric.exe")
    if fso.fileExists(fullName) then
        getProeVersion = left(fso.getFileVersion(fullName), 2)
    elseif fso.fileExists(fullName2) then
        getProeVersion = left(fso.getFileVersion(fullName2), 2)
    end if
end function

'------------------------------------------------------------------------------
sub deleteIfExist(name)
    set fso = getObj("FSO")
    if fso.fileExists(name) then
        call fso.deleteFile(name, true)
    elseif fso.folderExists(name) then
        call fso.deleteFolder(name, true)
    end if
end sub

'------------------------------------------------------------------------------
function readFile (fileName)
    set fso = getObj("FSO")
    if fso.fileExists(fileName) then
        set file = fso.openTextFile(fileName, 1)
        readFile = file.readAll()
        file.close()
    else
        readFile = empty
    end if
end function

'------------------------------------------------------------------------------
function writeFile (filename, content)
    writeFile = false
    set fso = getObj("FSO")
    'if fso.fileExists(filename) then
        set file = fso.openTextFile(filename, 2, true)
        file.write(content)
        file.close()
        writeFile = true
    'end if
end function

'------------------------------------------------------------------------------
' return the index of the propName's value or 0
function findProp(str, propName, valueSpliter, propSpliter)
    findProp = 0
    if valueSpliter = "" then
        valueSpliter = "="
    end if
    if propSpliter = "" then
        propSpliter = vbNewLine
    end if

    index = inStr(1, str, propName)
    if index > 0 then 'propName found
        vsIndex = inStr(index+len(propName), str, valueSpliter)
        psIndex = inStr(index+len(propName), str, propSpliter)
        if (vsIndex > 0) and ((psIndex>vsIndex) or (psIndex<=0)) then
            if trim(mid(str, index, vsIndex-index)) = propName then
                findProp = vsIndex + len(valueSpliter)
            end if
        end if
    end if
end function

'------------------------------------------------------------------------------
' set the propName's value. if not found add it
function setPropValueAnyway(str, propName, val, valueSpliter, propSpliter)
    if valueSpliter = "" then
        valueSpliter = "="
    end if
    if propSpliter = "" then
        propSpliter = vbNewLine
    end if

    index = findProp(str, propName, valueSpliter, propSpliter)
    if index > 0 then 'property found
        leftStr = left(str, index-1)
        psIndex = inStr(index, str, propSpliter)
        if psIndex < 1 then
            psIndex = len(str) + 1
        end if
        rightStr = right(str, len(str)-psIndex+1)

        str = leftStr & val & rightStr
    else 'not found
        str = str & propSpliter & propName & valueSpliter & val
    end if

    setPropValueAnyway = str
end function

'------------------------------------------------------------------------------
' set the propName's value if found
function setPropValue(str, propName, val, valueSpliter, propSpliter)
    if valueSpliter = "" then
        valueSpliter = "="
    end if
    if propSpliter = "" then
        propSpliter = vbNewLine
    end if

    index = findProp(str, propName, valueSpliter, propSpliter)
    if index > 0 then 'property found
        leftStr = left(str, index-1)
        psIndex = inStr(index, str, propSpliter)
        if psIndex < 1 then
            psIndex = len(str) + 1
        end if
        rightStr = right(str, len(str)-psIndex+1)

        str = leftStr & val & rightStr
    end if

    setPropValue = str
end function

'------------------------------------------------------------------------------
' return the propName's value if found, otherwise return empty
function getPropValue(str, propName, valueSpliter, propSpliter)
    getPropValue = empty
    if valueSpliter = "" then
        valueSpliter = "="
    end if
    if propSpliter = "" then
        propSpliter = vbNewLine
    end if

    index = findProp(str, propName, valueSpliter, propSpliter)
    if index > 0 then 'property found
        psIndex = inStr(index, str, propSpliter)
        if psIndex <= 0 then
            psIndex = len(str) + 1
        end if

        getPropValue = mid(str, index, psIndex-index)
    end if
end function

'------------------------------------------------------------------------------
function proeApplyConfig(target, config, applySup, applyPro, applyWin)
    proeApplyConfig = empty

    if isProeFolder(target) and isProeConfigFolder(config) then
        configSup = config & "\configs\config.sup"
        configPro = config & "\configs\config.pro"
        configWin = config & "\configs\config.win.1"
        destSup = target & "\text\config.sup"
        destPro = target & "\text\config.pro"
        destWin = target & "\text\config.win.99"

        set fso = getObj("FSO")

        if getProeVersion(target) = "28" then 'proe5
            wf5 = config & "\configs\WF5\config.sup"
            if fso.fileExists(wf5) then
                configSup = wf5
            end if

            wf5 = config & "\configs\WF5\config.pro"
            if fso.fileExists(wf5) then
                configPro = wf5
            end if

            wf5 = config & "\configs\WF5\config.win.1"
            if fso.fileExists(wf5) then
                configWin = wf5
            end if
        end if

        if getProeVersion(target) = "31" then 'creo3
            destSup = target & "\Common Files\text\config.sup"
            destPro = target & "\Common Files\text\config.pro"
            destWin = target & "\Common Files\text\config.win.99"

            creo3 = config & "\configs\Creo3\config.sup"
            if fso.fileExists(creo3) then
                configSup = creo3
            end if

            creo3 = config & "\configs\Creo3\config.pro"
            if fso.fileExists(creo3) then
                configPro = creo3
            end if

            creo3 = config & "\configs\Creo3\config.win.1"
            if fso.fileExists(creo3) then
                configWin = creo3
            end if
        end if

        str = ""

        if applySup then
            content = readFile(configSup)
            oldPath = trim(getPropValue(content, "ProeConfigPath", "", ""))
            content = replace(content, oldPath, fso.getFolder("."))
            content = content & vbNewLine & "! Author=WKQ"
            call writeFile(destSup, content)
            str = str & "config.sup "
        end if

        if applyPro then
            content = readFile(configPro)
            content = content & vbNewLine & "! Author=WKQ"
            call writeFile(destPro, content)
            str = str & "config.pro "
        end if

        if applyWin and fso.fileExists(configWin) then
            call fso.copyFile(configWin, destWin, true)
            str = str & "config.win"
        end if

        if str <> "" then
            proeApplyConfig = target & ":" & vbNewLine & "(" & str & ")"
        end if
    end if
end function

'------------------------------------------------------------------------------
function proeMakeBackup(target, backupSup, backupPro, backupWin)
    proeMakeBackup =false

    if not isProeFolder(target) then
        exit function
    end if

    destSup = target & "\text\config.sup"
    destPro = target & "\text\config.pro"
    destWin = target & "\text\config.win.99"

    if getProeVersion(target) = "31" then 'creo3
        destSup = target & "\Common Files\text\config.sup"
        destPro = target & "\Common Files\text\config.pro"
        destWin = target & "\Common Files\text\config.win.99"
    end if

    supBak = destSup & ".bak"
    proBak = destPro & ".bak"
    winBak = destWin & ".bak"

    set fso = getObj("FSO")
    if backupSup and fso.fileExists(destSup) then
        content = readFile(destSup)
        if trim(getPropValue(content, "Author","","")) <> "WKQ" then
            deleteIfExist(supBak)
            call fso.moveFile(destSup, supBak)
            proeMakeBackup = true
        end if
    end if

    if backupPro and fso.fileExists(destPro) then
        content = readFile(destPro)
        if trim(getPropValue(content, "Author", "", "")) <> "WKQ" then
            deleteIfExist(proBak)
            call fso.moveFile(destPro, proBak)
            proeMakeBackup = true
        end if
    end if

    'if backupWin and fso.fileExists(destWin) then
    '    deleteIfExist(winBak)
    '    call fso.moveFile(destWin, winBak)
    '    proeMakeBackup = true
    'end if
end function

'------------------------------------------------------------------------------
function proeRestoreConfig(target, restoreSup, restorePro, restoreWin)
    str = empty

    if isProeFolder(target) then
        set fso = getObj("FSO")
        destSup = target & "\text\config.sup"
        destPro = target & "\text\config.pro"
        destWin = target & "\text\config.win.99"
        if getProeVersion(target) = "31" then 'creo3
            destSup = target & "\Common Files\text\config.sup"
            destPro = target & "\Common Files\text\config.pro"
            destWin = target & "\Common Files\text\config.win.99"
        end if

        supBak = destSup & ".bak"
        proBak = destPro & ".bak"
        winBak = destWin & ".bak"

        if restoreSup and fso.fileExists(supBak) then
            deleteIfExist(destSup)
            call fso.moveFile(supBak, destSup)
            str = str & "config.sup "
        end if

        if restorePro and fso.fileExists(proBak) then
            deleteIfExist(destPro)
            call fso.moveFile(proBak, destPro)
            str = str & "config.pro "
        end if

        if restoreWin then
            if fso.fileExists(winBak) then
                deleteIfExist(destWin)
                call fso.moveFile(winBak, destWin)
                str = str & "config.win"
            elseif fso.fileExists(destWin) then
                deleteIfExist(destWin)
                str = str & "config.win"
            end if
        end if

        if str <> "" then
            str = target & ":" & vbNewLine & "(" & str & ")"
        end if
    end if
        proeRestoreConfig = str
end function
'------------------------------------------------------------------------------
function enumInstallations(maxNum)
    dim possibleInstall(30)
    possibleInstall(1)  = "Program Files\proeWildfire 3.0"
    possibleInstall(2)  = "Program Files\proeWildfire 4.0"
    possibleInstall(3)  = "Program Files\proeWildfire 5.0"
    possibleInstall(4)  = "Program Files\Creo Elements\Pro5.0"
    possibleInstall(5)  = "Proe3.0"
    possibleInstall(6)  = "Proe4.0"
    possibleInstall(7)  = "Proe5.0"
    possibleInstall(8)  = "PTC\Proe3.0"
    possibleInstall(9)  = "PTC\Proe4.0"
    possibleInstall(10) = "PTC\Proe5.0"
    possibleInstall(11) = "soft\CAD\proeWildfire 3.0"
    possibleInstall(12) = "soft\CAD\proeWildfire 4.0"
    possibleInstall(13) = "soft\CAD\proeWildfire 5.0"
    possibleInstall(14) = "Program Files (x86)\proeWildfire 3.0"
    possibleInstall(15) = "Program Files (x86)\proeWildfire 4.0"
    possibleInstall(16) = "Program Files (x86)\proeWildfire 5.0"
    possibleInstall(17) = "Program Files (x86)\Creo Elements\Pro5.0"
    possibleInstall(18) = "Program Files\PTC\Creo 3.0\M010"
    possibleInstall(19) = "Program Files\PTC\Creo 3.0\M020"
    possibleInstall(20) = "Program Files\PTC\Creo 3.0\M030"
    possibleInstall(21) = "Program Files (x86)\PTC\Creo 3.0\M010"
    possibleInstall(22) = "Program Files (x86)\PTC\Creo 3.0\M020"
    possibleInstall(23) = "Program Files (x86)\PTC\Creo 3.0\M030"

    if maxNum = 0 then
        maxNum = 4
    end if
    redim installs(maxNum)
    count = 0
    set fso = getObj("FSO")

    for each drive in fso.drives
        if drive.driveType = 2 then 'hard drive
            for i = lbound(possibleInstall) to ubound(possibleInstall)
                path = drive.driveLetter & ":\" & possibleInstall(i)
                if isProeFolder(path) and count<maxNum then
                    installs(count) = path
                    count = count + 1
                end if
            next
            if count >= maxNum then
                exit for
            end if
        end if
    next

    enumInstallations = installs
end function

'==============================================================================todo
function perform(path, action)
    if isProeFolder(path) then
        if yesNoBox("为以下安装"&action&"配置?"&vbNewLine&path) = vbYes then
            if action = "应用" then
                if gMakeBackup then
                    call proeMakeBackup(path, gApplySup, gApplyPro, gApplyWin)
                end if
                ret = proeApplyConfig(path, getCurrentPath(), _
                                  gApplySup, gApplyPro, gApplyWin)
                if ret <> "" then
                    infoBox "已"&action&"以下配置:"&vbNewLine&ret
                end if

            elseif action = "还原" then
                ret = proeRestoreConfig(path, _
                                        gApplySup, gApplyPro, gApplyWin)
                if ret <> "" then
                    str = str & ret & vbNewLine
                    infoBox "已"&action&"以下配置:"&vbNewLine&ret
                end if
            end if
        end if
    end if
end function

'==============================================================================todo
sub configWithoutUI()
    if not isProeConfigFolder(getCurrentPath()) then
        infoBox("配置文件无效,请确保此脚本位于配置目录中!")
        exit sub
    end if

    action = yesNoCancelBox(" [Yes] - 应用配置"&vbNewLine& _
                            " [No ] - 恢复配置 (如果存在备份)")

    if action = vbYes then
        action = "应用"
    elseif action = vbNo then
        action = "还原"
    else
        exit sub
    end if

    installs = enumInstallations(0)
    str = ""

    for i = lbound(installs) to ubound(installs)
        currInstall = installs(i)
        call perform(currInstall, action)
    next

    done = false
    do while not done
        path = selectFolder("请选择ProE安装目录并 [确定]:" &vbNewLine& _
                            "(如:D:\Program Files\proeWildfire 3.0)" &vbNewLine& _
                            "或 [取消] 以退出")

        if not isEmpty(path) then 'pressed OK button
            call perform(path, action)
        else 'pressed cancel'
            done = true
        end if
    loop
end sub

'==============================================================================
sub main()
    call configWithoutUI()
end sub

'==============================================================================
main()
