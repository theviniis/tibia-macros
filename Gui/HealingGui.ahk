Persistent(true)
COLORS := {
   EK: "c0x50BD7C",
   RP: "c0xD2D26B",
   none: "c0xFF0030"
}

HealingGui := Gui()
HealingDot := HealingGui.AddProgress("w8 h8 vMyProgress", 100)
HealingGui.Opt("+AlwaysOnTop -Caption +E0x8000000 +E0x20")
HealingGui.BackColor := "000000"
WinSetTransColor(HealingGui.BackColor " 255", HealingGui)
SetTimer(UpdateOSD, 50)
UpdateOSD()

UpdateOSD() {
   MouseGetPos &MouseX, &MouseY
   if (App.callStack.healingPlayer) {
      HealingDot.Opt(COLORS.%App.callStack.healingPlayer%)
   } else {
      HealingDot.Opt(COLORS.none)
   }
}

Loop {
   if WinActive(App.client) {
      HealingGui.Show("x878 y450 NoActivate")
   } else {
      HealingGui.Hide()
   }
   Sleep(500)
}
