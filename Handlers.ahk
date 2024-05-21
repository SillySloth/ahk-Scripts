#Requires AutoHotkey v2.0

shortcutHandler(window, exePath) {
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