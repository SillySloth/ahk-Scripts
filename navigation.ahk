#Requires AutoHotkey v2.0
#Include config.ahk

;Keybind shortcuts
#F:: firefox()
#C:: chrome()
#E:: explorer()
#I:: illustrator()
#Q:: vsCode()
#B:: beats()
#H:: hidden()
#V:: visualStudio()

; Mozilla Firefox shortcut
firefox() {
    keyBindHandler("Mozilla Firefox", firefoxExe)
}
; Google Chrome shortcut
chrome() {
    keyBindHandler("Google Chrome", chromeExe)
}
; File Explorer shortcut
explorer() {
    keyBindHandler("ahk_class CabinetWClass", explorerExe)
}
; Adobe Illustrator shortcut
illustrator() {
    keyBindHandler("Adobe Illustrator 2024", illustratorExe)
}
; Visual Studio Code shortcut
vsCode() {
    keyBindHandler("Visual Studio Code", vsCodeExe)
}
; Spotify shortcut
beats() {
    keyBindHandler("Spotify Premium", spotifyExe)
}
; Vpn shortcut
hidden() {
    keyBindHandler("Private Internet Access", vpnExe)
}
; Visual Studio shortcut
visualStudio() {
    keyBindHandler("Microsoft Visual Studio", visualStudioExe)
}

keyBindHandler(window, exePath) {
    If !WinExist(window) ;If window doesnt exist then launch    
        Run exePath    
    Else
    {
        pik := WinGetList(Window)

        if pik.Length == 1 ;If only a single window is open
        {
            If WinActive(window)
                WinMinimize
            else
                WinActivate
        }
        else ;If multiple windows are open
        {
            for id in pik
                WinActivate id
        }
    }
    Return
}
