'==============================================================================
' Rename ProE versioned file to *.1
' copyright(c)WKQ
' wkqboy@gmail.com
' 2014.12.09
'==============================================================================
Language="VBScript"

'-------------------------------------------------------------------------- lib
function getObj(str)
    objName = ""
    select case str
        case "FSO"
            objName = "scripting.fileSystemObject"
        case "SHELL"
            objName = "shell.application"
        case "WSHELL"
            objName = "wscript.shell"
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
sub deleteIfExist(name)
    set fso = getObj("FSO")
    if fso.fileExists(name) then
        call fso.deleteFile(name, true)
    elseif fso.folderExists(name) then
        call fso.deleteFolder(name, true)
    end if
end sub

'------------------------------------------------------------------------------
function infoBox(text)
    infoBox = msgbox(text, vbInformation, "Information")
end function

function yesNoBox(text)
    yesNoBox = msgbox(text, vbYesNo + vbQuestion, "Please choose")
end function

function yesNoCancelBox(text)
    yesNoCancelBox = msgbox(text, vbYesNoCancel + vbQuestion, "Please choose")
end function

function warringBox(text)
    warringBox = msgbox(text, vbExclamation, "Warring")
end function

function errorBox(text)
    errorBox = msgbox(text, vbCritical, "Error")
end function

'------------------------------------------------------------------------- work
sub updateOperation(byRef recorder, fileName, currIndex)
    '把小版本标记为 delete'
    '把大版本标记为 rename'
    set fso = getObj("FSO")
    baseName = fso.getBaseName(fileName)
    version  = fso.getExtensionName(fileName)

    for i = 1 to currIndex - 1
        bn = fso.getBaseName(recorder(i, 1))
        v  = fso.getExtensionName(recorder(i, 1))

        if baseName = bn then
            if version+0 > v+0 then
                recorder(i, 2) = "delete"
            else
                recorder(currIndex, 2) = "delete"
            end if
        end if
    next
end sub

'------------------------------------------------------------------------- work
function traversal(folder, byRef recorder, byRef maxNameLength)
    fileIndex = 0
    maxNameLength = 0
    for each file in folder.files
        fileIndex = fileIndex + 1
        recorder(fileIndex, 1) = file.path

        if len(file.name) > maxNameLength then
            maxNameLength = len(file.name)
        end if

        segments = split(file.name, ".")
        segNum   = ubound(segments) + 1

        if segNum = 2 then
            if segments(segNum-1) = "crc" or _
               segments(segNum-1) = "log" or _
               segments(segNum-1) = "out" or _
               file.name = "current_session.pro" then
                recorder(fileIndex, 2) = "delete"
            end if

        elseif segNum = 3 and _
               isNumeric(segments(segNum-1)) then

            fileType = segments(segNum-2)

            if fileType = "log" or _
               fileType = "txt" then
                recorder(fileIndex, 2) = "delete"

            elseif fileType = "asm" or _
                   fileType = "prt" or _
                   fileType = "drw" or _
                   fileType = "csv" then
                if segments(segNum-1) = "1" then
                    recorder(fileIndex, 2) = "ok"
                else
                    recorder(fileIndex, 2) = "rename"
                end if
                call updateOperation(recorder, file.name, fileIndex)
            else
                recorder(fileIndex, 2) = "unknown"
            end if
        end if
    next
end function

'------------------------------------------------------------------------- work
function getTip(recorder, maxNameLength)
    '生成提示文字并返回'
    const width = 160 '61
    colWidth    = maxNameLength + 1
    strDelete   = ""
    strRename   = ""

    colNum = width\colWidth
    if colNum < 1 then '可增加 or true 强制设置为 1 列'
        colNum = 1
    end if

    set fso = getObj("FSO")
    currColOfDel = 1
    currColOfRen = 1
    for i = 1 to ubound(recorder, 1)
        fileName = fso.getFile(recorder(i, 1)).name
        operate  = recorder(i, 2)

        if operate = "delete" then
            if strDelete = "" then
                strDelete = "以下文件将被删除:" & vbNewLine
            end if

            if currColOfDel = colNum then
                strDelete = strDelete & fileName & vbNewLine
            else
                strDelete = strDelete & fileName
                leftSpace = colWidth - len(fileName)
                for n=1 to leftSpace
                    strDelete = strDelete & " " '由于不是等宽字体,所以大于1列时后面列对不齐'
                next
            end if
            currColOfDel = currColOfDel mod colNum + 1

        elseif operate = "rename" then
            if strRename = "" then
                strRename = "以下文件将被重命名为 *.1 :" & vbNewLine
            end if

            if currColOfRen = colNum then
                strRename = strRename & fileName & vbNewLine
            else
                strRename = strRename & fileName
                leftSpace = colWidth - len(fileName)
                for n=1 to leftSpace
                    strRename = strRename & " "
                next
            end if
            currColOfRen = currColOfRen mod colNum + 1
        end if
    next

    if strDelete = "" and strRename = "" then
        getTip = empty
    else
        getTip = strDelete & vbNewLine & strRename
    end if
end function

'------------------------------------------------------------------------- work
function perform(recorder)
    '把标记为delete的删除'
    '把标记为rename的重命名为 *.1'
    set fso = getObj("FSO")
    for i = 1 to ubound(recorder, 1)
        fileName = recorder(i, 1)
        operate  = recorder(i, 2)
        set file = fso.getFile(fileName)
        newName  = file.parentFolder & "\" & fso.getBaseName(fileName) & ".1"

        if operate = "delete" then
            deleteIfExist(fileName)
        elseif operate = "rename" then
            call fso.moveFile(fileName, newName)
        end if
    next
end function

'==============================================================================
sub main()
    set fso    = getObj("FSO")
    set folder = nothing

    path = inputBox("请输入要清理的文件夹地址或"&vbNewLine&"直接 [确定] 清理当前文件夹")
    if not isEmpty(path) then
        if path = "" then
            set folder = fso.getFolder(".")
        elseif not fso.folderExists(path) then
            infoBox "文件夹不存在"
            exit sub
        else
            set folder = fso.getFolder(path)
        end if
    else '点击取消
        exit sub
    end if

    fileNum    = folder.files.count
    redim recorder(fileNum, 2)
    maxNameLength = 0

    call  traversal(folder, recorder, maxNameLength)
    str = getTip(recorder, maxNameLength)
    if str <> "" then
        result = yesNoBox(str)
        if result = vbYes then
            perform(recorder)
        end if
    else
        infoBox "此文件夹无需清理!"
    end if
end sub

'==============================================================================
main()
