#Requires AutoHotkey v2.0

;Binds
+WheelUp::adjustVolume("up")
+WheelDown::adjustVolume("down")
#LButton::centerMouse()

; Volume Control
adjustVolume(direction) {
    if (direction = 'up') {
        SoundSetVolume "+5"
    }
    else if (direction = 'down') {
        SoundSetVolume "-5"
    }

    ; Show Volume Level
    volume := SoundGetVolume()    
    ToolTip("Volume Level: " Round(volume))   
    SetTimer(RemoveToolTip, -1000)
}
RemoveToolTip() {
    ToolTip
}

; Set Mouse Position To Center
centermouse() { 
    MouseMove(SysGet(16) / 2, SysGet(17) / 2)
}
