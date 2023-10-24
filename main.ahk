#Include <index>

; ================== RUNES ================== ;
$F4:: Rune.send(User.hotkeys.AOE)

$F17:: Rune.send(User.hotkeys.MW)

; ================== UH ================== ;
$^Ins:: UH.setAllPositions()

$F2:: UH.send("EK")

$F3:: UH.send("RP")

; ================== Debuff ================== ;
WheelDown:: Spells.debuff(User.hotkeys.DEBUFF)

WheelUp:: Spells.debuff(User.hotkeys.BUFF)

; ================== OTHERS ================== ;
$!^Escape:: ExitApp()
