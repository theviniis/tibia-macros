Persistent(true)

UPDATE_USD_CD := 50
CHECK_USD_CD := 1000

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
SetTimer(UpdateOSD, UPDATE_USD_CD)
UpdateOSD()

UpdateOSD() {
   MouseGetPos &MouseX, &MouseY
   if (App.callStack.healingPlayer)
      HealingDot.Opt(COLORS.%App.callStack.healingPlayer%)
   else
      HealingDot.Opt(COLORS.none)
}

SetTimer checkShouldShowGui, CHECK_USD_CD

checkShouldShowGui() {
   isClientActive := Paths.tibia.client.process
   isGuiEnabled := App.options.showGui
   if WinActive(isGuiEnabled and isClientActive)
      HealingGui.Show("x878 y450 NoActivate")
   else
      HealingGui.Hide()
}
