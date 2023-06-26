; Made by Bortresso on Discord
; Version 0.1

#NoEnv
SetBatchLines -1

; Create GUI window
Gui +OwnDialogs
Gui Add, Text,, Select hotkeys for the worlds:
Gui Add, Text,, Small world hotkey:
Gui Add, Hotkey, vSmallHotkey, Small World
Gui Add, Text,, Normal world hotkey:
Gui Add, Hotkey, vNormalHotkey, Normal World
Gui Add, Text,, Huge world hotkey:
Gui Add, Hotkey, vHugeHotkey, Huge World
Gui Add, Button, gSaveHotkeys, Save Hotkeys
Gui Show, Center, Hotkey Selector

return

SaveHotkeys:
    Gui Submit, NoHide
    
    ; Small world hotkey
    Hotkey, %SmallHotkey%, SmallWorldHotkey
    
    ; Normal world hotkey
    Hotkey, %NormalHotkey%, NormalWorldHotkey
    
    ; Huge world hotkey
    Hotkey, %HugeHotkey%, HugeWorldHotkey
    
    MsgBox, Hotkeys have been saved.
return

SmallWorldHotkey:
    ClickAtCoordinates(1114, 687)
    Send, {Escape}
    Sleep, 200
    Send, {Escape}
    ClickAtCoordinates(956, 468)
    ClickAtCoordinates(961, 447)
    Send, {Enter}
return

NormalWorldHotkey:
    ClickAtCoordinates(1114, 687)
    Send, {Escape}
    Sleep, 200
    Send, {Escape}
    ClickAtCoordinates(956, 468)
    ClickAtCoordinates(961, 548)
    Send, {Enter}
return

HugeWorldHotkey:
    ClickAtCoordinates(1114, 687)
    Send, {Escape}
    Sleep, 200
    Send, {Escape}
    ClickAtCoordinates(956, 468)
    ClickAtCoordinates(961, 646)
    Send, {Enter}
return

; Function to click at specified coordinates relative to the screen size
ClickAtCoordinates(x, y) {
    SysGet, screenWidth, 1
    SysGet, screenHeight, 1
    relativeX := x / screenWidth
    relativeY := y / screenHeight
    MouseGetPos, startX, startY
    targetX := Round(screenWidth * relativeX)
    targetY := Round(screenHeight * relativeY)
    MouseClick, left, %targetX%, %targetY%
    MouseMove, startX, startY, 0
}
