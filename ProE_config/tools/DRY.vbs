
'msgbox's buttons parameter:
'const               value   description
'vbOKOnly            0       '
'vbOKCancel          1       '
'vbAbortRetryIgnore  2       '
'vbYesNoCancel       3       '
'vbYesNo             4       '
'vbRetryCancel       5       '
'vbCritical          16      show critical icon
'vbQuestion          32      show question icon
'vbExclamation       48      show exclamation icon
'vbInformation       64      show information icon
'vbDefaultButton1    0       first button is default
'vbDefaultButton2    256     '
'vbDefaultButton3    512     '
'vbDefaultButton4    768     '
'vbApplicationModal  0       user must answer the msgbox first for this application
'vbSystemModal       4096    user must answer the msgbox first for all applications

'==============================================================================
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
function max(a, b)
    max = a
    if b>a then
        max = b
    end if
end function

'------------------------------------------------------------------------------
function min(a, b)
    min = a
    if b<a then
        min = b
    end if
end function

'------------------------------------------------------------------------------
function colName(index)
    const digits = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    ary = len(digits) + 1 'ary

    if index <= 0 then
        colName = empty
    elseif index < ary then
        colName = mid(digits, index, 1)
    else
        colName = colName(index\(ary-1)) & mid(digits, (index mod (ary-1)), 1)
    end if
end function

'------------------------------------------------------------------------------
function getBit(int, bit)
    getBit = -1
    if bit>=1 and bit <=32 then
        i = int\(2^(bit-1))'
        getBit = i mod 2
    end if
end function

'------------------------------------------------------------------------------
function setBit(int, bit)
    if getBit(int, bit) = 0 then
        int = int + 2^(bit-1)
    end if
    setBit = int
end function

'------------------------------------------------------------------------------
function clrBit(int, bit)
    if getBit(int, bit) = 1 then
        int = int - 2^(bit-1)
    end if
    clrBit = int
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
'from absolute path name
function createFolder (name)
    names   = split(name, "\")
    path    = names(0)
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
function createShortcut (target, name)
    createShortcut = false

    set fso = getObj("FSO")
    if fso.fileExists(target) then
        set file = fso.getFile(target)
        if name = "" then
            name = file.name
        end if
        set wshell = getObj("WSHELL")
        desktopPath = wshell.specialFolders("Desktop")

        set link = wshell.createShortcut(desktopPath & "\" & name & ".lnk")
        link.targetPath = target
        link.iconLocation = target & "," & 0
        link.windowStyle = 1
        'link.workingDirectory = ""
        'link.hotkey = hotkey
        link.save

        createShortcut = true
    end if
end function

'------------------------------------------------------------------------------
function getCurrentPath()
    set fso = getObj("FSO")
    getCurrentPath = fso.getFolder(".")
end function

'------------------------------------------------------------------------------
function getElementById(DOM, id)
    set getElementById = nothing

    set ids = DOM.all
    for each it in ids
        if it.id = id then
            set getElementById = it
            exit for
        end if
    next
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

'==================================================================== for CATIA
class CATProdParser
    private mCount, mOutOfBoundary, _
            mLevelCol, mIndexCol, mPnCol, mQtyCol, mObjCol, _
            mExtraCol, mExtraProps, _
            table()

    '--------------------------------------------'
    property get count
        count = mCount
    end property

    '--------------------------------------------'
    property get level(row)
        ret = 0
        if row >= 1 and row <= mCount and _
           mLevelCol>=1 and mLevelCol<=ubound(table, 2) then
            ret = table(row, mLevelCol)
        end if
        level = ret
    end property

    '--------------------------------------------'
    property get index(row)
        ret = 0
        if row >= 1 and row <= mCount and _
           mIndexCol>=1 and mIndexCol<=ubound(table, 2) then
            ret = table(row, mIndexCol)
        end if
        index = ret
    end property

    '--------------------------------------------'
    property get pn(row)
        ret = empty
        if row >= 1 and row <= mCount and _
           mPnCol>=1 and mPnCol<=ubound(table, 2) then
            ret = table(row, mPnCol)
        end if
        pn = ret
    end property

    '--------------------------------------------'
    property get qty(row)
        ret = 0
        if row >= 1 and row <= mCount and _
           mIndexCol>=1 and mIndexCol<=ubound(table, 2) then
            ret = table(row, mQtyCol)
        end if
        qty = ret
    end property

    '--------------------------------------------'
    property get prod(row)
        set ret = nothing
        if row >= 1 and row <= mCount and _
           mObjCol>=1 and mObjCol<=ubound(table, 2) then
            set ret = table(row, mObjCol)
        end if
        set prod = ret
    end property

   '--------------------------------------------'
    property get extra(row)
        set ret = empty
        if row >= 1 and row <= mCount and _
           mExtraCol>=1 and mExtraCol<=ubound(table, 2) then
            ret = table(row, mExtraCol)
        end if
        extra = ret
    end property

   '--------------------------------------------'
    property let extra(row, val)
        if row >= 1 and row <= mCount and _
           mExtraCol>=1 and mExtraCol<=ubound(table, 2) then
            table(row, mExtraCol) = val
        end if
    end property

   '--------------------------------------------'
    property let extraProps(props)
        if isArray(props) then
            if ubound(props, 1)>=2 and ubound(props, 2)>=1 then
                mExtraProps = props
            end if
        end if
    end property

   '--------------test if the prod is a assembly
    private function isAssembly(prod)
        isAssembly = false
        if prod.Products.Count > 0 then
            isAssembly = true
        end if
    end function

    '--------------------------------------------'
    private sub doParse(prod, level)
        startRow = mCount + 1
        currIndex = 1

        for i=1 to prod.Products.count
            set currProd = prod.Products.item(i)
            foundRepeat = false
            '-------------------------------------------------------find repeat
            for r=startRow to mCount
                if table(r, mPnCol) = currProd.PartNumber and _
                   table(r, mLevelCol) = level then
                    table(r, mQtyCol) = table(r, mQtyCol) + 1
                    foundRepeat = true
                    exit for
                end if
            next

            '------------------------------record currProd to tab's current row
            if not foundRepeat then
                if isArray(mExtraProps) then
                    for iProp=1 to ubound(mExtraProps, 2)
                        if mExtraProps(1, iProp) = "" then
                            exit for
                        end if
                        if isEmpty(getURP(currProd, mExtraProps(1, iProp))) then
                            setURP currProd, mExtraProps(1, iProp), mExtraProps(2, iProp)
                        end if
                    next
                end if

                if lCase(getURP(currProd, KW_TYPE))<>"hide" then
                    if mCount < ubound(table, 1) then
                        table(mCount + 1, mLevelCol) = level
                        table(mCount + 1, mIndexCol) = currIndex
                        table(mCount + 1, mPnCol)    = currProd.PartNumber
                        table(mCount + 1, mQtyCol)   = 1
                        set table(mCount+1, mObjCol) = currProd

                        currIndex = currIndex + 1
                        mCount = mCount + 1

                        if isAssembly(currProd) then
                            call doParse(currProd, level + 1)
                        end if
                    else
                        mOutOfBoundary = true
                        exit sub
                    end if
                end if 'not hide
            end if 'not found repeat
        next
    end sub

    '--------------------------------------------'
    sub parse(prod)
        mCount = 0
        mOutOfBoundary  = false
        prod.applyWorkMode(DESIGN_MODE)
        call doParse(prod, 1)
        if mOutOfBoundary then
            msgbox "Too many data!"&vbNewLine& _
                    "(The maximum data number is: "&ubound(table,1)&")"
        end if
    end sub

    '--------------------------------------------'
    function searchProd(pn)
        set searchProd = nothing
        if pn <> "" then
            for row=1 to mCount
                if table(row, mPnCol) = pn then
                    set searchProd = table(row, mObjCol)
                    exit for
                end if
            next
        end if
    end function

    '--------------------------------------------'
    function getIndexStr(theRow)
        str = ""
        if (theRow >= 1) and (theRow <= mCount) then
            row=theRow
            finishedL = table(row, mLevelCol)+1
            while table(row, mLevelCol) > 1
                if table(row, mLevelCol) = finishedL-1 then
                    str = "."&table(row, mIndexCol) & str
                    finishedL = table(row, mLevelCol)
                end if
                row = row - 1
            wend
            str = table(row, mIndexCol) & str
        end if
        getIndexStr = str
    end function

    '--------------------------------------------'
    function getURP(prod, propName)
        getURP = empty

        if propName <> "" then
            set urps = prod.ReferenceProduct.UserRefProperties
            for i=1 To urps.Count
                propStr = urps.item(i).ValueAsString
                'msgbox propStr&"|"&propName&"|"&findProp(propStr, propName)
                valIndex   = findProp(propStr, propName)
                if valIndex > 0 then 'property found
                    getURP = getPropValue(propStr, propName)
                    exit for
                end if
            next
        end if
    end function

    '--------------------------------------------'
    function setURP(prod, propName, val)
        setURP = empty

        if propName <> "" then
            set urps = prod.ReferenceProduct.UserRefProperties
            propFound = false
            for i=1 To urps.Count
                propStr = urps.item(i).ValueAsString
                valIndex   = findProp(propStr, propName)
                if valIndex > 0 then 'property found
                    urps.item(i).valuateFromString (setPropValue(propStr, propName, val))
                    propFound = true
                    exit for
                end if
            next

            if not propFound then
                urps.CreateString propName, propName&valueSpliter&val
            end if

            setURP = val
        end if
    end function

    '--------------------------------------------'
    sub clearURP(prod)
        set urps = prod.ReferenceProduct.UserRefProperties
        while urps.Count > 0
            urps.remove(1)
        wend
    end sub

    '--------------------------------------------'
    private sub class_initialize
        mCount      = 0
        mLevelCol   = 1
        mIndexCol   = 2
        mPnCol      = 3
        mQtyCol     = 4
        mObjCol     = 5
        mExtraCol   = 6

        redim table (1000, 6)
    end sub

    '--------------------------------------------'
    private sub class_terminate
        for i=1 to ubound(table,1)
            set table(i, mObjCol) = nothing
        next
    end sub
end class

'===================================================================== for ProE
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


'========================================================================= test
