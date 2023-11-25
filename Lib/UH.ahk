#Include <App>
#Include <../Utils/utils>

class UH extends App {
   static send(target) {
      posX := super.cursorAreas.active.middleX
      posY := super.cursorAreas.active.middleY

      if not (super.callStack.isCursorOnPartyListArea) {
         MouseGetPos(&mX, &mY)
         posX := mX
         posY := mY
      }

      SendInput(super.hotkeys.UH)
      Sleep(this.cooldowns.click)
      MouseClick("left", target.x, target.y)
      MouseMove(posX, posY)
      Sleep(super.cooldowns.rune)
   }

   static setPosition(player, newPosition := false) {
      MouseGetPos(&mX, &mY)
      this.partyList.%player%.x := newPosition ? newPosition.x : mX
      this.partyList.%player%.y := newPosition ? newPosition.y : mY
      if (!newPosition) {
         label := "POSITION_SET " player ": " this.partyList.%player%.x ", " this.partyList.%player%.y ";"
         Alert.send(label)
      }
   }

   static setAllPositions() {
      MouseGetPos(&mX, &mY)
      for player in this.partyList.OwnProps() {
         this.setPosition(player, {
            x: mX,
            y: mY + (this.partyListPlayerGap * (A_Index - 1)),
         })
      }
      Alert.positions()
   }

   static sendPositionsTooltip() {
      global
      label := ""
      for player in this.partyList.OwnProps() {
         label .= player ": " this.partyList.%player%.x ", " this.partyList.%player%.y ";`n"
      }
      sendTooltip(label)
      return label
   }
}
