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
        on error resume next
        set mApp = getObject(, "EXCEL.application")
        if mApp is nothing then 'fix bug'
            set mApp = nothing
        else
            if mApp.workBooks.count < 1 then
                mApp.workBooks.add
            end if
        end if

        set mRange = nothing
    end sub

    '-------------------------------------------'
    private sub class_terminate
        set mRange = nothing
        set mApp = nothing
    end sub

    '-------------------------------------------'
    property get app
        set app = mApp
    end property

    '-------------------------------------------'
    property get oRange
        set oRange = mRange
    end property

    '-------------------------------------------'
    sub create()
        on error resume next
        set mApp = createObject("EXCEL.application")
        if not mApp is nothing then
            mApp.workBooks.add
        else
            set mApp = nothing 'fix bug'
        end if
    end sub

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
            mRange.Interior.ColorIndex = color mod 57
        end if
    end property

    '-------------------------------------------'
    property let fontColor(color)

    end property

    '-------------------------------------------'
    property let fontSize(size)

    end property

    '-------------------------------------------'
    property let fontFamily(name)

    end property

    '-------------------------------------------'
    property let fontBold(bold)

    end property
    '-------------------------------------------'
    property let alignment(align)

    end property

    '-------------------------------------------'
    property let borderStyle(style)

    end property

    '-------------------------------------------'
    property let borderWeight(weight)

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
    if excel.app is nothing then
        msgBox "create new Excel", vbInformation, "Title"
        excel.create()
        excel.app.visible = true
    else
        msgBox "opend Excel", vbInformation, "title"
    end if

    'excel.range(2,2,3,3).bgColor = 4
    'excel.value = 4
    msgbox excel.usedRange.sizeX & "-" & excel.sizeY
end sub

'------------------------------------------------------------------------------
if test then
    main()
end if
