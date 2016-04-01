'==============================================================================
' class for access Excel
' copyright(c)WKQ
' wkqboy@qq.com
' 2016.03.28
'==============================================================================
test = true

'------------------------------------------------------------------------------
class ExcelApp
    private mApp, mRange

    '-------------------------------------------'
    private sub class_initialize
        set mRange = nothing
        set mApp = nothing
    end sub

    '-------------------------------------------'
    private sub class_terminate
        set mRange = nothing
        set mApp = nothing
    end sub

    '-------------------------------------------'
    function connect()
        on error resume next
        connect    = false
        set mApp   = nothing
        set mRange = nothing

        set mApp = getObject(, "EXCEL.application")
        if not mApp is nothing then
            if mApp.workBooks.count > 0 then
                connect = true
            end if
        end if
    end function

    '-------------------------------------------'
    function disConnect()
        set mApp   = nothing
        set mRange = nothing

        disConnect = true
    end function

    '-------------------------------------------'
    function create()
        on error resume next
        create = true

        set mApp = getObject(, "EXCEL.application")
        if not mApp is nothing then
            mApp.workBooks.add
            set mRange = nothing
        else
            set mApp = createObject("EXCEL.application")
            if not mApp is nothing then
                mApp.workBooks.add
                mApp.visible = true
            else
                create = false
            end if
        end if
    end function

    '-------------------------------------------'
    property get app
        set app = mApp
    end property

    '-------------------------------------------'
    property get oRange
        set oRange = mRange
    end property

    '-------------------------------------------'
    property get range(x, y, w, h)
        if not mApp is nothing then
            if w = 0 or h = 0 then
                set mRange = nothing
            else
                if w < 0 then
                    w = w + 2
                end if
                if h < 0 then
                    h = h + 2
                end if

                set cell1 = mApp.cells(y, x)
                set cell2 = mApp.cells(y+h-1, x+w-1)
                set mRange = mApp.range(cell1, cell2)
            end if
            set range = me
        else
            set range = nothing
        end if
    end property

    '-------------------------------------------'
    property get usedRange()
        if not mApp is nothing then
            set mRange = mApp.activeSheet.usedRange
            set usedRange = me
        else
            set usedRange = nothing
        end if
    end property

    '-------------------------------------------'
    property get cell(x, y)
        set cell = range(x, y, 1, 1)
    end property

    '-------------------------------------------'
    property get value()
        if not mRange is nothing then
            value = mRange.value
        else
            value = empty
        end if
    end property

    '-------------------------------------------'
    property let value(v)
        if not mRange is nothing then
            mRange.value = v
        end if
    end property

    '-------------------------------------------'
    property get startX()
        if not mRange is nothing then
            startX = mRange.column
        else
            startX = 0
        end if
    end property

    '-------------------------------------------'
    property get startY()
        if not mRange is nothing then
            startY = mRange.row
        else
            startY = 0
        end if
    end property

    '-------------------------------------------'
    property get sizeX()
        if not mRange is nothing then
            sizeX = mRange.columns.count
        else
            sizeX = 0
        end if
    end property

    '-------------------------------------------'
    property get sizeY()
        if not mRange is nothing then
            sizeY = mRange.rows.count
        else
            sizeY = 0
        end if
    end property

    '-------------------------------------------'
    property let bgColor(color)
        if not mRange is nothing then
            mRange.interior.colorIndex = color mod 57
        end if
    end property

    '-------------------------------------------'
    property let fontColor(color)
        if not mRange is nothing then
            mRange.font.colorIndex = color
        end if
    end property

    '-------------------------------------------'
    property let fontSize(size)
        if not mRange is nothing then
            mRange.font.size = size
        end if
    end property

    '-------------------------------------------'
    property let fontName(name)
        if not mRange is nothing then
            mRange.font.name = name
        end if
    end property

    '-------------------------------------------'
    property let fontBold(bold)
        if not mRange is nothing then
            mRange.font.bold = bold
        end if
    end property
    '-------------------------------------------'
    property let alignment(align)
        if not mRange is nothing then
            mRange.horizontalAlignment = align
        end if
    end property

    '-------------------------------------------'
    property let bordersStyle(style)
        if not mRange is nothing then
            mRange.borders.lineStyle = style
        end if
    end property

    '-------------------------------------------'
    property let borderStyle(which, style) 'left:1, right:2, top:3, bottom:4'
        if not mRange is nothing then
            mRange.borders(which).lineStyle = style
        end if
    end property

    '-------------------------------------------'
    property let borderWeight(weight)
        if not mRange is nothing then
            if weight < 1 then
                weight = 2
            end if
            mRange.borders.weight = weight
        end if
    end property

    '-------------------------------------------'
    property let colWidth(size)
        if not mRange is nothing then
            mRange.columnWidth = size
        end if
    end property

    '-------------------------------------------'
    property let rowHeight(size)
        if not mRange is nothing then
            mRange.rowHeight = size
        end if
    end property

    '-------------------------------------------'
    sub mergeBlankX()

    end sub

    '-------------------------------------------'
    sub mergeBlankY()

    end sub

    '-------------------------------------------'

end class


'==============================================================================
sub main()
    set excel = new ExcelApp
    if not excel.connect then
        msgBox "create new Excel", vbInformation, "Title"
        excel.create()
        excel.cell(1,1).value = "create"
    else
        msgBox "opend Excel", vbInformation, "title"
        excel.cell(1,1).value = "opend"
    end if

    excel.range(2,2,3,3).bgColor = 4
    excel.range(2,2,3,1).borderWeight = 0
    excel.value = 4
    excel.usedRange
    msgbox excel.startX & "-" & excel.startY & "-" & excel.sizeX & "-" & excel.sizeY
end sub

'------------------------------------------------------------------------------
if test then
    main()
end if
