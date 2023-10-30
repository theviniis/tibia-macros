class Rune extends App {
   static send(rune, cooldown := this.cooldowns.rune) {
      SendInput(rune)
      Sleep(this.cooldowns.click)
      Click()
      Sleep(cooldown)
   }

   static sendOnTarget(rune, target, cooldown := this.cooldowns.rune) {
      MouseGetPos(&mX, &mY)
      SendInput(rune)
      Sleep(this.cooldowns.click)
      MouseClick("left", this.partyList.%target%.x, this.partyList.%target%.y)
      MouseMove(mX, mY)
      Sleep(cooldown)
   }
}
