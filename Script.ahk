; Made by Bortress. on Discord
; Version 0.2

#NoEnv
SetBatchLines -1

; Change "u" to whatever key you want to be
; This is a small world
$u::
    ClickAtCoordinates(1114, 687)
    Send, {Escape}
    Sleep, 200
    Send, {Escape}
    ClickAtCoordinates(956, 468)
    ClickAtCoordinates(961, 447)
    Send, {Enter}
Return

; Change "i" to whatever key you want to be
; This is a normal world
$i::
    ClickAtCoordinates(1114, 687)
    Send, {Escape}
    Sleep, 200
    Send, {Escape}
    ClickAtCoordinates(956, 468)
    ClickAtCoordinates(961, 548)
    Send, {Enter}
Return

; Change "o" to whatever key you want to be
; This is a huge world
$o::
    ClickAtCoordinates(1114, 687)
    Send, {Escape}
    Sleep, 200
    Send, {Escape}
    ClickAtCoordinates(956, 468)
    ClickAtCoordinates(961, 646)
    Send, {Enter}
Return

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
