class UH extends App {
   static send(target) {
      this.callStack.healingPlayer := target

      mX := 916
      mY := 429

      if not (isMouseInArea(176, 408, 348, 492)) {
         MouseGetPos(&mX, &mY)
         mX := mX
         mY := mY
      }

      SendInput(super.hotkeys.UH)
      Sleep(this.cooldowns.click)
      MouseClick("left", this.partyList.%target%.x, this.partyList.%target%.y)
      MouseMove(mX, mY)
      Sleep(super.cooldowns.rune)

      this.callStack.healingPlayer := false
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
