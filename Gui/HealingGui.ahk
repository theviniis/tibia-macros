Persistent(true)

COLORS := {
   EK: "c0x50BD7C",
   RP: "c0xD2D26B",
   none: "c0xFF0030"
}

HealingGui := Gui()
HealingDot := HealingGui.AddProgress("w24 h24 vMyProgress", 100)
HealingGui.Opt("+AlwaysOnTop -Caption +ToolWindow")
HealingGui.BackColor := "000000"
WinSetTransColor(HealingGui.BackColor " 255", HealingGui)
SetTimer(UpdateOSD, 50)
UpdateOSD()

UpdateOSD() {
   MouseGetPos &MouseX, &MouseY
   if (User.callStack.healingPlayer) {
      HealingDot.Opt(COLORS.%User.callStack.healingPlayer%)
   } else {
      HealingDot.Opt(COLORS.none)
   }
}

Loop {
   if WinActive(User.client) {
      HealingGui.Show("x1882 y998 NoActivate")
   } else {
      HealingGui.Hide()
   }
   Sleep(500)
}
