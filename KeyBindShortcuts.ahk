#Requires AutoHotkey v2.0
;Keybind shortcuts

#F:: firefox()
#C:: chrome()
#E:: explorer()
#I:: illustrator()

; Firefox shortcut
firefox() {
    shortcutHandler("Mozilla Firefox", "C:/Program Files/Mozilla Firefox/firefox.exe")
}
; Chrome shortcut
chrome() {
    shortcutHandler("Google Chrome", "C:/Program Files/Google/Chrome/Application/chrome.exe")
}
; Explorer shortcut
explorer() {
    shortcutHandler("ahk_class CabinetWClass", "C:/Windows/explorer.exe")
}
; Illustrator shortcut
illustrator() {
    shortcutHandler("Adobe Illustrator 2024", "C:/Program Files/Adobe/Adobe Illustrator 2024/Support Files/Contents/Windows/Illustrator.exe")
}

shortcutHandler(window, launch) {
    If !WinExist(window) ;If window doesnt exist then launch
    {
        Run launch
    }
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