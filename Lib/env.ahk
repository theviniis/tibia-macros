#Include "../Paths.ahk"
#HotIf WinActive(Paths.tibia.client.process)
#SingleInstance Force
SetWorkingDir A_ScriptDir
A_HotkeyInterval := 99999999
A_MaxHotkeysPerInterval := 99999999
#MaxThreadsPerHotkey 2
#MaxThreadsBuffer 1
SendMode("Input")
SetKeyDelay(0)
SetMouseDelay(0)
SetDefaultMouseSpeed(0)
SetWinDelay(-1)
CoordMode("Mouse", "Screen")
CoordMode("Pixel", "Client")
ListLines 0

iconPath := "./Asset/icon.png"
if FileExist(iconPath) {
   TraySetIcon(iconPath)
}
