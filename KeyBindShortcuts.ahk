#Requires AutoHotkey v2.0
#Include Config.ahk
#Include Handlers.ahk

;Keybind shortcuts
#F:: firefox()
#C:: chrome()
#E:: explorer()
#I:: illustrator()
#V:: vsCode()
#B:: beats()
#H:: hidden()

; Mozilla Firefox shortcut
firefox() {
    shortcutHandler("Mozilla Firefox", firefoxExe)
}
; Google Chrome shortcut
chrome() {
    shortcutHandler("Google Chrome", chromeExe)
}
; File Explorer shortcut
explorer() {
    shortcutHandler("ahk_class CabinetWClass", explorerExe)
}
; Adobe Illustrator shortcut
illustrator() {
    shortcutHandler("Adobe Illustrator 2024", illustratorExe)
}
; Visual Studio Code shortcut
vsCode() {
    shortcutHandler("Visual Studio Code", vsCodeExe)
}
; Spotify shortcut
beats() {
    shortcutHandler("Spotify Premium", spotifyExe)
}
; Vpn shortcut
hidden() {
    shortcutHandler("Private Internet Access", vpnExe)
}


