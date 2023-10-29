#Include <index>

; ================== RUNES ================== ;
$F4:: Rune.send(App.hotkeys.AOE)

$F17:: Rune.send(App.hotkeys.MW)

; ================== UH ================== ;
$^Ins:: UH.setAllPositions()

$F2:: UH.send("EK")

$F3:: UH.send("RP")

; ================== Debuff ================== ;
WheelDown:: Spells.debuff(App.hotkeys.DEBUFF)

WheelUp:: Spells.debuff(App.hotkeys.BUFF)

; ================== Item Toggle ================== ;
$1:: {
   Item.toggle("ammu")
   sleep 75
   Item.toggle("ring")
}

; ================== OTHERS ================== ;
$!^Escape:: ExitApp()

$^Escape:: Suspend()
