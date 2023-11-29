Persistent
DetectHiddenWindows(true)
#SingleInstance Force
#Include "<env>"
#Include "Paths.ahk"
#NoTrayIcon
#Include "./Utils/index.ahk"

SetTimer CheckWindowAndProcess, 2000

CheckWindowAndProcess() {
   isMacroOpen := WinExist(Paths.tibia.macro.path)
   if (isClientActive() and !isMacroOpen)
      Run(Paths.tibia.macro.path)
}
