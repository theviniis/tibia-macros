class Rune extends User {
   static send(rune, cooldown := this.cooldowns.exhaust) {
      SendInput(rune)
      Sleep(this.cooldowns.click)
      Click
      Sleep(cooldown)
   }

   static sendOnTarget(rune, target, cooldown := this.cooldowns.exhaust) {
      MouseGetPos(&mX, &mY)
      SendInput(rune)
      Sleep(this.cooldowns.click)
      MouseClick("left", this.partyList.%target%.x, this.partyList.%target%.y)
      MouseMove(mX, mY)
      Sleep(cooldown)
   }
}
