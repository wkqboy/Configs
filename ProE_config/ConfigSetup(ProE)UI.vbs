'==============================================================================
' ProE configture tool
' Description: This tool can apply my ProE configture to current mechine
' Contact me : wkqboy@gmail.com
' Copyright ©2014 Wang Keqin, All Rights Reserved
'==============================================================================
Language="VBScript"

'---------------------------------------------------------------------- globals
set explorer = nothing
set DOM = nothing
set ids = nothing

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
sub browseInstall(i)
    path = selectFolder("请选择ProE安装目录:" & vbNewLine & _
                        "(如:D:\Program Files\proeWildfire 3.0)")
    if not isEmpty(path) then 'pressed OK button
        set it = getElementById(DOM, "installPath" & i)
        if not it is nothing then
            if isProeFolder(path) then
                it.style.color = "black"
            else
                it.style.color = "red"
            end if
            it.value = path
        end if
    end if
end sub

sub browseInstall1()
    browseInstall(1)
end sub

sub browseInstall2()
    browseInstall(2)
end sub

sub browseInstall3()
    browseInstall(3)
end sub

sub browseInstall4()
    browseInstall(4)
end sub

sub browseInstall5()
    browseInstall(5)
end sub

sub browseInstall6()
    browseInstall(6)
end sub

sub browseInstall7()
    browseInstall(7)
end sub

sub browseInstall8()
    browseInstall(8)
end sub

sub browseInstall9()
    browseInstall(9)
end sub

'------------------------------------------------------------------------------
sub browseConfig()
    path = selectFolder("请选择配置文件目录")
    if not isEmpty(path) then
        ids.configPath.value = path
    end if
end sub

'------------------------------------------------------------------------------not use
sub reduce()
    for i=9 to 1 step -1
        set it = getElementById(DOM, "install" & i)
        if not it is nothing and i > 1 then
            if not it.style.display = "none" then
                it.style.display = "none"
                explorer.height = explorer.height - 24
                set tx = getElementById(DOM, "installPath"&i)
                if not tx is nothing then
                    tx.value = ""
                end if
                exit for
            end if
        end if
    next
end sub

'------------------------------------------------------------------------------not use
sub add()
    for i=1 to 9
        set it = getElementById(DOM, "install" & i)
        if not it is nothing and i < 10 then
            if it.style.display = "none" then
                it.style.display = "inline"
                explorer.height = explorer.height + 24
                exit for
            end if
        end if
    next
end sub

'------------------------------------------------------------------------------
sub restore()
    str = ""
    for i=1 to 9
        set it = getElementById(DOM, "installPath" & i)
        if not it is nothing then
            ret = proeRestoreConfig(trim(it.value), _
                                    ids.applySup.checked, _
                                    ids.applyPro.checked, _
                                    ids.applyWin.checked)
            if ret <> "" then
                str = str & ret & vbNewLine
            end if
        end if
    next

    if str <> "" then
        str = "已恢复以下配置:" & vbNewLine & str
    else
        str = "未恢复任何配置."
    end if
    infoBox str
end sub

'------------------------------------------------------------------------------
sub apply()
    gApplySup = ids.applySup.checked
    gApplyPro = ids.applyPro.checked
    gApplyWin = ids.applyWin.checked

    str = ""
    for i=1 to 9
        set it = getElementById(DOM, "installPath" & i)
        if not it is nothing then
            if ids.makeBackup.checked then
                call proeMakeBackup(trim(it.value), gApplySup, gApplyPro, gApplyWin)
            end if

            ret = proeApplyConfig(trim(it.value), _
                                  ids.configPath.value, _
                                  gApplySup, _
                                  gApplyPro, _
                                  gApplyWin)
            if ret <> "" then
                str = str & ret & vbNewLine
            end if
        end if
    next

    if str <> "" then
        str = "已应用以下配置:" & vbNewLine & str
    else
        str = "未应用任何配置"
    end if

    infoBox str
end sub

'------------------------------------------------------------------------------
sub cancel()
    explorer.quit
    wscript.quit
end sub

'------------------------------------------------------------------------------
sub flashText(it)
    if it.style.color = "red" then
        it.style.color = "black"
    else
        it.style.color = "red"
    end if
end sub

'------------------------------------------------------------------------------
sub idle()
    for i=1 to 9
        set it = getElementById(DOM, "installPath" & i)
        if not it is nothing then
            if it.value<>"" and not isProeFolder(trim(it.value)) then
                flashText(it)
            else
                it.style.color = "black"
            end if
        end if
    next

    if isProeConfigFolder(ids.configPath.value) then
        ids.configPath.style.color = "black"
    else
        flashText(ids.configPath)
    end if
end sub

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

'------------------------------------------------------------------------------
sub configWithUI(ie, uiFile)
    ie.menubar = 0
    ie.addressbar = 0
    ie.toolbar = 0
    ie.statusbar = 0
    ie.resizable = 0
    ie.navigate "about:blank"
    ie.width = 450
    ie.height = 400
    ie.left = fix((ie.document.parentwindow.screen.availwidth-ie.width)/2 - 300)
    ie.top = fix((ie.document.parentwindow.screen.availheight-ie.height)/2)

    set DOM = ie.document
    uiString = readFile(uiFile)
    DOM.write uiString
    set ids = DOM.all 'must after write

    for i=5 to 9
        set it = getElementById(DOM, "install"&i)
        it.style.display = "none"
    next

    if gMakeBackup then
        ids.makeBackup.checked = true
    else
        ids.makeBackup.checked =false
    end if

    if gApplySup then
        ids.applySup.checked = true
    else
        ids.applySup.checked =false
    end if

    if gApplyPro then
        ids.applyPro.checked = true
    else
        ids.applyPro.checked =false
    end if

    if gApplyWin then
        ids.applyWin.checked = true
    else
        ids.applyWin.checked =false
    end if

    ids.browseInstall1.onClick = getRef("browseInstall1")
    ids.browseInstall2.onClick = getRef("browseInstall2")
    ids.browseInstall3.onClick = getRef("browseInstall3")
    ids.browseInstall4.onClick = getRef("browseInstall4")
    ids.browseInstall5.onClick = getRef("browseInstall5")
    ids.browseInstall6.onClick = getRef("browseInstall6")
    ids.browseInstall7.onClick = getRef("browseInstall7")
    ids.browseInstall8.onClick = getRef("browseInstall8")
    ids.browseInstall9.onClick = getRef("browseInstall9")

    ids.browseConfig.onClick   = getRef("browseConfig")

    'ids.reduce.onClick  = getRef("reduce")
    'ids.add.onClick     = getRef("add")

    ids.restore.onClick = getRef("restore")
    ids.apply.onClick   = getRef("apply")
    ids.cancel.onClick  = getRef("cancel")

    ids.configPath.value = getCurrentPath()

    installs = enumInstallations(4)
    for i=lbound(installs) to ubound(installs)
        if installs(i) <> "" then
            set it = getElementById(DOM, "installPath"&(1+i))
            if not it is nothing then
                it.value = installs(i)
            end if
        end if
    next

    ie.visible = 1

    do while true
        wscript.sleep 200
        idle()
    loop
end sub

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
                    'str = str & ret & vbNewLine
                    infoBox path&"已"&action
                end if

            elseif action = "还原" then
                ret = proeRestoreConfig(path, _
                                        gApplySup, gApplyPro, gApplyWin)
                if ret <> "" then
                    'str = str & ret & vbNewLine
                    infoBox path&"已"&action
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
    set fso = getObj("FSO")
    set explorer = getObj("IE")

    method = "with ui"
    uiFile = "tools\UI.html"
    if (not fso.fileExists(uiFile)) or (explorer is nothing) then
        method = "without ui"
    end if

    select case method
        case "with ui"
            call configWithUI(explorer, uiFile)

        case else
            call configWithoutUI()
    end select
end sub

'==============================================================================
include "tools\DRY.vbs"
main()
