
'==============================================================================
function getObj(str)
    objName = empty
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
            objName = str
    end select

    err.clear
    on error resume next
    set getObj = getObject(,objName)
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
function getMat(r, g, b)
    rr = ""
    if r<0.99 then
        rr = "0"
    end if
    gg = ""
    if g<0.99 then
        gg = "0"
    end if
    bb = ""
    if b<0.99 then
        bb = "0"
    end if

    str = ""
    str = str & vbCrLf & _
    "material_name " & chr(34) & "RGB" & rr& formatNumber(r,2)&"-"&gg& formatNumber(g,2)&"-"&bb& formatNumber(b,2) & chr(34) &vbCrLf& _
    "ambient_color " & rr& formatNumber(r,6)&" "& gg& formatNumber(g,6)&" "& bb& formatNumber(b,6)&" "&"1.000000" &vbCrLf& _
    "diffuse_color " & rr& formatNumber(r,6)&" "& gg& formatNumber(g,6)&" "& bb& formatNumber(b,6)&" "&"1.000000" &vbCrLf& _
    "specular_color 1.000000 1.000000 1.000000 1.000000" &vbCrLf& _
    "diffuse 0.900000" &vbCrLf& _
    "ambient 0.900000" &vbCrLf& _
    "shine 0.500000" &vbCrLf& _
    "intensity 0.500000" &vbCrLf& _
    "reflection 0.250000" &vbCrLf& _
    "transparency 0.000000" &vbCrLf& _
    "index_of_refraction 1.000000" &vbCrLf& _
    "fresnel_reflections 0"

    getMat = str
end function

'==============================================================================
sub main()
    str = _
    "V5.0" & vbCrLf & _
    "#" & vbCrLf & _
    "#" & vbCrLf & _
    "# PGL Version 5.0" & vbCrLf & _
    "#" & vbCrLf & _
    "#"

    for r=0.00 to 1.00 step 0.20
        for g=0.00 to 1.00 step 0.20
            for b=0.00 to 1.00 step 0.20
                str = str & getMat(r,g,b)
            next
        next
    next
    writeFile "appearance.dmt", str
end sub

'==============================================================================
main()
