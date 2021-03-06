'==============================================================================
' ProE exported BOM file format tool
' Description: This tool work with ProE's drawing format template,
'              and 3D template of my configture. Generate a BOM drawing
'              file and export as .csv file, then run this script, you
'              will get a formated BOM
' Contact me : wkqboy@gmail.com
' Copyright ©2014 Wang Keqin, All Rights Reserved
'==============================================================================
Language="VBScript"

'---------------------------------------------------------------------- options
'1 :black       2 :white    3 :red          4 :green        5 :blue
'6 :yellow      7 :pink     8 :qing se      9 :dark red     10:dark green
'11:dark blue   15:grey     16:dark grey

gTitleBgColor        = 33    '44
gContentBgColor      = 34    '36
gLevelOneBgColor     = 35    '45
gFontName            = "Microsoft YaHei"
gFontSize            = 10
gFontColor           = 1
gHideWhileFormatting = false
gSaveSettedRows      = true '设置此项速度会比较慢'
gUpdateDate          = true

'---------------------------------------------------------------------- globals
'the function testProeBOM() will set the following parameters
gLevelOneCol = 0
gLevelDeepth = 0
gCodeNum     = 0
gLevelMarker = empty

'------------------------------------------------------------------ auxiliary ↓
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

'-------------------------------------------- message boxes shortcuts
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

'------------------------ get column name from column index for EXCEL
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

'------------------------------------------------------------------ auxiliary ↑
function isLastColUsefull(table)
    isLastColUsefull = true
    colNum = ubound(table, 2)
    if instr(1, lcase(table(4, colNum)), "index") >= 1 or _
       instr(1, lcase(table(4, colNum)), "order") >= 1 or _
       instr(1, lcase(table(4, colNum)), "sort")  >= 1 then
        isLastColUsefull = false
    end if
end function

'------------------------------------------------------------------------------
function testProeBOM(xlApp)
    testProeBOM = ""

    dataTable = xlApp.ActiveSheet.UsedRange.Value

    if not isArray(dataTable) then
        testProeBOM = "未读取到有效数据!"
    elseif ubound(dataTable, 1) < 6 then
        testProeBOM = "文件行数太少!"
    elseif ubound(dataTable, 2) < 12 then
        testProeBOM = "文件列数不正确!"
    elseif instr(1, lcase(dataTable(4, 1)), "index") < 1 then
        testProeBOM = "第一列应为序号!"
    elseif instr(1, lcase(dataTable(4, 2)), "level") < 1 then
        testProeBOM = "第二列应为组装等级!"
    elseif isEmpty(dataTable(5, 2)) then
        testProeBOM = "等级标记不能为空!"
    else
        colNum = ubound(dataTable, 2)
        if not isLastColUsefull(dataTable) then
            xlApp.columns(colNum).delete
            colNum = colNum - 1
        end if

        gLevelOneCol = 2
        gLevelMarker = dataTable(5, 2)

        for col = gLevelOneCol + 1 to colNum
            'if instr(1, dataTable(4, col), "Code") >= 1 then
            if dataTable(4, col) <> "" then
                gLevelDeepth = col - gLevelOneCol
                exit for
            end if
        next

        gCodeNum = colNum - gLevelDeepth - 9

        if gLevelDeepth < 2 then
            testProeBOM = "等级深度过小!"
        elseif gCodeNum < 1 then
            testProeBOM = "列项目缺失!"
        else
            testProeBOM = "OK"
        end if
    end if

    dataTable = empty
end function

'------------------------------------------------------------------------------
function formatBOM(xlApp)
    title = xlApp.caption
    if len(title) > 18 and _
       left(title, 15) = "Microsoft Excel" then
        title = right(title, len(title)-18)
    end if
    if yesNoBox("对《"&title&"》设置格式?") <> vbYes then
        exit function
    end if

    if gHideWhileFormatting then
        xlApp.visible = false
    end if

    redim colAttr(2, 18) '只能识别前18列
    colAttr(1, 1)  = 6 'column width'
    colAttr(2, 1)  = 2 'alignment 2:left, 3:center'

    colAttr(1, 2)  = 2 'level one column'
    colAttr(2, 2)  = 3
    colAttr(1, 8)  = 10 'code column'
    colAttr(2, 8)  = 3
    colAttr(1, 9)  = 10 'dwg code column'
    colAttr(2, 9)  = 3
    colAttr(1, 10) = 10 'cdr code column'
    colAttr(2, 10) = 3
    colAttr(1, 11) = 14 'name column'
    colAttr(2, 11) = 2
    colAttr(1, 12) = 25 'part number column'
    colAttr(2, 12) = 2
    colAttr(1, 13) = 5  'quantity column'
    colAttr(2, 13) = 3
    colAttr(1, 14) = 15 'material column'
    colAttr(2, 14) = 2
    colAttr(1, 15) = 20 'description column'
    colAttr(2, 15) = 2
    colAttr(1, 16) = 10 'supplier column'
    colAttr(2, 16) = 2
    colAttr(1, 17) = 15 'remarks column'
    colAttr(2, 17) = 2
    colAttr(1, 18) = 8  'type column'
    colAttr(2, 18) = 3

    '------------------------------------------------------------------ prepair
    dataTable       = xlApp.ActiveSheet.UsedRange.Value
    rowNum          = ubound(dataTable, 1)
    colNum          = ubound(dataTable, 2)
    xlDataStartRow  = 5
    blankRow        = rowNum
    xlLastColName   = colName(colNum)

    totalRange      = "A1:"&xlLastColName&rowNum
    h1Range         = "A1:"&xlLastColName&(1)
    h2Range         = "A2:"&xlLastColName&(2)
    h3Range         = "A3:"&xlLastColName&(3)
    h4Range         = "A4:"&xlLastColName&(4)
    headerRange     = "A1:"&xlLastColName&(4)
    indexRange      = "A"&xlDataStartRow&":"&"A"&(blankRow - 1)
    dataRange       = "B"&xlDataStartRow&":"&xlLastColName&(blankRow - 1)
    blankRange      = "A"&blankRow&":"&xlLastColName&blankRow

    '--------------------------------------------- save setted cells attributes
    'redim settedCells(rowNum*colNum, 3)
    redim settedRows(rowNum, 3)
    if gSaveSettedRows then
        settedRowNum = 0
        for row = xlDataStartRow to rowNum
            'for col = 1 to colNum
                ci = xlApp.cells(row, 2).interior.ColorIndex
                if ci <> -4142 and _
                   ci <> gTitleBgColor and _
                   ci <> gContentBgColor and _
                   ci <> gLevelOneBgColor then
                    settedRowNum = settedRowNum + 1
                    settedRows(settedRowNum, 1) = row
                    'settedRows(settedRowNum, 2) = 2
                    settedRows(settedRowNum, 3) = ci
                end if
            'next
        next
    end if

    '--------------------------------------- setup columns' width and alignment
    for col=1 to colNum
        if col = 1 then
            xlApp.Columns(col).ColumnWidth = colAttr(1, col)
            xlApp.Columns(col).HorizontalAlignment = colAttr(2, col)

        elseif col>=gLevelOneCol and col<=gLevelOneCol + gLevelDeepth - 1 then
            xlApp.Columns(col).ColumnWidth = colAttr(1, gLevelOneCol)
            xlApp.Columns(col).HorizontalAlignment = colAttr(2, gLevelOneCol)

        elseif col >= gLevelOneCol+gLevelDeepth and _
               col <= gLevelOneCol+gLevelDeepth+gCodeNum-1 then
            attrColMap = col - (gLevelOneCol + gLevelDeepth) + 8
            xlApp.Columns(col).ColumnWidth = colAttr(1, attrColMap)
            xlApp.Columns(col).HorizontalAlignment = colAttr(2, attrColMap)

        elseif col >= gLevelOneCol + gLevelDeepth + gCodeNum then
            attrColMap2 = col - (gLevelOneCol + gLevelDeepth + gCodeNum) + 11
            if attrColMap2 <= 18 then
                xlApp.Columns(col).ColumnWidth = colAttr(1, attrColMap2)
                xlApp.Columns(col).HorizontalAlignment = colAttr(2, attrColMap2)
            end if
        end if
    next

    '--------------------------------------------------- set default attributes
    xlApp.Range(totalRange).Font.Name = gFontName
    xlApp.Range(totalRange).Font.Size = gFontSize
    xlApp.Range(totalRange).Font.ColorIndex = gFontColor
    xlApp.Range(totalRange).Borders.LineStyle = 1
    xlApp.Range(dataRange).ShrinkToFit = true

    '------------------------------------------------------- header area format
    xlApp.Range(headerRange).Interior.ColorIndex = gTitleBgColor
    xlApp.Range(headerRange).HorizontalAlignment = 3
    xlApp.Range("A1").Font.Size = gFontSize + 2
    xlApp.Range("A1").Borders(4).LineStyle = 0
    xlApp.Range("A2").Borders(3).LineStyle = 0

    xlApp.Range(h1Range).Font.Bold = true
    xlApp.Range(h2Range).Font.ColorIndex = 2
    xlApp.Range(h3Range).Font.Bold = true
    xlApp.Range(h4Range).Font.ColorIndex = 2

    xlApp.Range(h3Range).Borders(3).LineStyle = 9
    xlApp.Range(h3Range).Borders(4).LineStyle = 0
    xlApp.Range(h4Range).Borders(3).LineStyle = 0

    'merge cells
    for row=1 to 4
        startCol = 1
        endCol   = 1
        for col=1 to colNum
            if dataTable(row, col) <> "" or col=colNum then
                if endCol > startCol then
                    xlApp.range(colName(startCol)&row&":"&colName(endCol)&row).merge
                end if
                startCol = col
            else
                endCol = col
            end if
        next
    next

    if gUpdateDate then
        for col = gLevelOneCol+gLevelDeepth to colNum
            if dataTable(1, col) = "更新日期" then
                today = DatePart("yyyy", Now)&"."&_
                        DatePart("m", Now)&"."&_
                        DatePart("d", Now)
                xlApp.cells(2, col) = today
                exit for
            end if
        next
    end if

    '-------------------------------------------------------- index area format
    xlApp.range(indexRange).Interior.ColorIndex = gTitleBgColor
    xlApp.range(indexRange).NumberformatLocal = "@"

    redim indexs(gLevelDeepth)
    'for i = lbound(indexs) to ubound(indexs)
        'indexs(i) = 0
    'next

    for row = 1 to blankRow - xlDataStartRow
        dtRow = row + xlDataStartRow - 1
        'compute index
        for col = 1 to gLevelDeepth
            dtCol = col + 1
            if dataTable(dtRow, dtCol) = gLevelMarker then
                indexs(col) = indexs(col) + 1
                for i=col+1 to ubound(indexs)
                    indexs(i) = 0
                next
                exit for
            end if
        next

        'write index string
        indexStr = " "
        for i = 1 to gLevelDeepth
            if indexs(i) > 0 then
                indexStr = indexStr&indexs(i)&"."
            else
                indexStr = left(indexStr, len(indexStr)-1)
                exit for
            end if
        next
        xlApp.cells(dtRow, 1) = indexStr
    next

    '--------------------------------------------------------- data area format
    xlApp.range(dataRange).Interior.ColorIndex = gContentBgColor
    for row = 1 to blankRow - xlDataStartRow
        dtRow = row + xlDataStartRow - 1

        'highlight level one
        if dataTable(dtRow, gLevelOneCol) = gLevelMarker then
            range = "B"&(dtRow)&":"&xlLastColName&(dtRow)
            xlApp.range(range).Interior.ColorIndex = gLevelOneBgColor
        end if

        for col = gLevelOneCol+gLevelDeepth to colNum
            if ucase(dataTable(dtRow, col)) = "N/A"   or _
               ucase(dataTable(dtRow, col)) = "<N/A>" or _
               ucase(dataTable(dtRow, col)) = "(N/A)" or _
               dataTable(dtRow, col)        = "\"     or _
               dataTable(dtRow, col)        = "/"     or _
               dataTable(dtRow, col)        = "-"     then
                xlApp.cells(dtRow, col).Font.ColorIndex = 15

            elseif col < gLevelOneCol+gLevelDeepth+gCodeNum and (_
                   instr(1, dataTable(dtRow, col), "分配")     >= 1 or _
                   instr(1, dataTable(dtRow, col), "物料编号") >= 1 or _
                   instr(1, dataTable(dtRow, col), "料号")     >= 1 or _
                   instr(1, dataTable(dtRow, col), "图号")     >= 1)then
                xlApp.cells(dtRow, col).Font.ColorIndex = 5

            end if

            if left(dataTable(dtRow, col), 2) = "借用" then
                xlApp.cells(dtRow, col).Font.ColorIndex = 10

            elseif left(dataTable(dtRow, col), 2) = "注:" or _
               left(dataTable(dtRow, col), 2) = "注意" or _
               instr(1, dataTable(dtRow, col), "暂未配置") >= 1 then
                xlApp.cells(dtRow, col).Font.ColorIndex = 3
            end if
        next
    next

    '--------------------------------------------------------- blank row format
    xlApp.range(blankRange).Interior.ColorIndex = gTitleBgColor
    xlApp.range(blankRange).Font.ColorIndex = 2
    xlApp.range(blankRange).HorizontalAlignment = 3
    xlApp.range(blankRange).merge

    '------------------------------------------ restore setted cells attributes
    if gSaveSettedRows then
        for n = 1 to settedRowNum
            'xlApp.cells(settedRows(n, 1), settedRows(n, 2)).interior.ColorIndex = settedRows(n, 3)
            rowRange = "B"&settedRows(n, 1)&":"&xlLastColName&settedRows(n, 1)
            xlApp.range(rowRange).interior.ColorIndex = settedRows(n, 3)
        next
    end if

    xlApp.visible = true
    set sh = getObj("WSHELL")
    sh.appActivate xlApp.caption
    sh.sendKeys "{enter}"
    xlApp.cells(1, 1).select

    set xlApp = nothing
end function

'==============================================================================
sub main()
    set xlApp = getObj("EXCEL")
    if xlApp is nothing then
        infoBox "启动EXCEL失败! 请先手动运行EXCEL!"

    elseif xlApp.workbooks.count < 1 then
        xlApp.visible = true
        infoBox "请先打开BOM文件!"&vbNewLine&"(如已经打开请重试一次!)"

    else
        result = testProeBOM(xlApp)
        if result = "OK" then
            formatBOM(xlApp)
        else
            infoBox result
        end if
    end if
end sub

'==============================================================================
main()