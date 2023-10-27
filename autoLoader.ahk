Persistent
DetectHiddenWindows(true)
#SingleInstance Force
#Include "<env>"
#Include "Paths.ahk"
#NoTrayIcon


SetTimer CheckWindowAndProcess, 1000

CheckWindowAndProcess() {
   isClientOpen := WinExist(Paths.tibia.client.process)
   isMacroOpen := WinExist(Paths.tibia.macro.path)
   if (isClientOpen and !isMacroOpen)
      Run(Paths.tibia.macro.path)
}
