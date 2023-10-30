#Include <index>

; ================== RUNES ================== ;
$F4:: Rune.send(App.hotkeys.AOE)

$F17:: Rune.send(App.hotkeys.MW)

; ================== UH ================== ;
$^Ins:: UH.setAllPositions()

$F2:: UH.send("EK")

$F3:: UH.send("RP")

; ================== BindSpells ================== ;
WheelDown:: Spells.bindedOnCenter(App.hotkeys.DEBUFF)

+WheelDown:: Spells.bindedOnCenter(App.hotkeys.BUFF)

WheelUp:: Spells.bindedOnCenter(App.hotkeys.utamo)

; ================== Item Toggle ================== ;

$1:: {
   Item.equip(App.hotkeys.SSA) ; SSA Bind

   ;  Item.toggleAmmuAndRing()
}

; ================== OTHERS ================== ;
$!^Escape:: ExitApp()

$^Escape:: Suspend()
