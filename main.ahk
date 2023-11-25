#Include <index>

; ================== RUNES ================== ;
$F4:: Rune.send(App.hotkeys.AOE)

$F17:: Rune.send(App.hotkeys.MW)

; ================== UH ================== ;
$^Ins:: UH.setAllPositions()

$F2:: UH.send({
   x: App.partyList.EK.x,
   y: App.partyList.EK.y
})

$F3:: UH.send({
   x: App.partyList.RP.x,
   y: App.partyList.RP.y
})

; ================== BindSpells ================== ;
WheelDown:: Spells.bindedOnCenter(App.hotkeys.DEBUFF)

+WheelDown:: Spells.bindedOnCenter(App.hotkeys.BUFF)

WheelUp:: Spells.bindedOnCenter(App.hotkeys.utamo)

; ================== Item Toggle ================== ;

; $1:: Item.equip(App.hotkeys.SSA)

$1:: Item.toggleAmmuAndRing()

; ================== OTHERS ================== ;
$!^Escape:: ExitApp()

$^Escape:: Suspend()
