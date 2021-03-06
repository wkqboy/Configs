'------------------------------------------------------------------------------
' AutoCAD configture setup tool
' (c)WKQ
' wkqboy@gmail.com
' 2014.07.01
'------------------------------------------------------------------------------
Language="VBScript"

'==============================================================================
gMakeBackup = true

'===========================================================================DRY
function getObj(str)
    objName = str
    select case str
        case "FSO"
            objName = "Scripting.FileSystemObject"
        case "SHELL"
            objName = "Shell.Application"
        case "WSHELL"
            objName = "Wscript.Shell"
        case "EXCEL"
            objName = "EXCEL.Application"
        case "IE"
            objName = "InternetExplorer.Application"
        case default
            'objName = str
    end select

    err.clear
    on error resume next
    set getObj = getObject( ,objName)
    if err.number <> 0 then
        err.clear
        set getObj = createObject(objName)
    end if
    if err.number <> 0 then
        err.clear
        set getObj = Nothing
    end if
end function

'------------------------------------------------------------------------------
valueSpliter = "="
propSpliter  = vbNewLine

'------------------------------------------------------------------------------
function findProp(str, propName)
    findProp = 0

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
function setPropValue(str, propName, val)
    index = findProp(str, propName)
    if index > 0 then 'property found
        leftStr = left(str, index-1)
        psIndex = inStr(index, str, propSpliter)
        if psIndex <= 0 then
            psIndex = len(str) + 1
        end if
        rightStr = right(str, len(str)-psIndex+1)

        str = leftStr & val & rightStr
    else
        str = str & propSpliter & propName & valueSpliter & val
    end if

    setPropValue = str
end function

'------------------------------------------------------------------------------
function getPropValue(str, propName)
    getPropValue = Empty

    index = findProp(str, propName)
    if index > 0 then 'property found
        psIndex = inStr(index, str, propSpliter)
        if psIndex <= 0 then
            psIndex = len(str) + 1
        end if

        getPropValue = mid(str, index, psIndex-index)
    end if
end function

'------------------------------------------------------------------------------
function selectFolder(str)
    selectFolder = Empty

    if str = "" then
        str = "Please select a folder"
    end if
    set objShell = getObj("SHELL")
    set objFolder = objShell.BrowseForFolder(0, str, 0, 0)

    if not (objFolder is Nothing) then
        selectFolder = objFolder.Self.Path
    end if
end function

'------------------------------------------------------------------------------
function createFolder (name)
    names = split(name, "\")
    path = names(0)
    set fso = getObj("FSO")
    if path = fso.getDriveName(name) then
        for i=1 to ubound(names)
            if trim(names(i)) <> "" then
                path = path & "\" & names(i)
                if not fso.folderExists(path) then
                    fso.createFolder(path)
                end if
            else
                exit function
            end if
        next
    end if
end function

'------------------------------------------------------------------------------
sub deleteIfExist(name)
    set fso = getObj("FSO")
    if fso.fileExists(name) then
        fso.deleteFile name, true
    elseif fso.folderExists(name) then
        fso.deleteFolder name, true
    end if
end sub

'------------------------------------------------------------------------------
function readFile (filename)
    readFile = empty
    set fso = getObj("FSO")
    if fso.fileExists(filename) then
        set file = fso.openTextFile(filename, 1)
        readFile = file.readAll()
        file.close()
    else
        msgbox "文件 "& filename &" 不存在"
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

'===========================================================================DRY
function isValidTarget(target)
    isValidTarget = false

    set fso = getObj("FSO")
    if fso.folderExists(target) then
        isValidTarget = true
    end if
end function

'------------------------------------------------------------------------------
function enumInstallations(maxNum)
    if maxNum = 0 then
        maxNum = 4
    end if
    redim installs(maxNum)

    dim possibleInstall(2)
    possibleInstall(1) = "\Autodesk\AutoCAD 2007\R17.0\chs"
    possibleInstall(2) = "\Autodesk\AutoCAD 2008\R17.1\chs"

    installs(0) = 0
    set fso = getObj("FSO")

    for i = lbound(possibleInstall) to ubound(possibleInstall)
        if possibleInstall(i) <> "" then
            path = "C:\Users\Administrator\AppData\Roaming" & possibleInstall(i)
            if isValidTarget(path) and installs(0)<maxNum then
                installs(0) = installs(0) + 1
                installs(installs(0)) = path
            end if
        end if
    next

    enumInstallations = installs
end function

'------------------------------------------------------------------------------
function isValidConfig()
    isValidConfig = false

    set fso = getObj("FSO")
    currPath = fso.getFolder(".")
    plotStyles = currPath & "\chs\Plot Styles"
    support = currPath & "\chs\Support"

    if  fso.folderExists(plotStyles) and _
        fso.folderExists(support) then
        isValidConfig = true
    end if
end function

'------------------------------------------------------------------------------
function applyConfig (target, title)
    applyConfig = false

    if isValidTarget(target) then
        if vbYes <> msgbox("为以下安装应用配置?"&vbNewLine&target,vbYesNo,title) then
            exit function
        end if

        set fso = getObj("FSO")
        'configFolder = fso.getFolder(".")
        
        call fso.copyFolder("chs", target)

        applyConfig = true
        msgbox target & vbNewLine & currPath & vbNewLine & "配置完成" ,,"完成"
    else
        msgbox "此CATIA环境文件无效",,"ERROR"
    end if
end function

'------------------------------------------------------------------------------
sub main ()
    if not isValidConfig() then
        call msgbox("未找到配置文件,此脚本应放置在配置目录中",,"ERROR")
        exit sub
    end if

    installs = enumInstallations(0)
    for i = 1 to installs(0)
        call applyConfig(installs(i), i&"/"&installs(0))
    next
end sub

'==============================================================================
main()
