class Rune extends App {
   static send(rune, cooldown := super.cooldowns.rune) {
      SendInput(rune)
      Sleep(super.cooldowns.click)
      Click()
      Sleep(cooldown)
   }

   static sendOnTarget(rune, target, cooldown := super.cooldowns.rune) {
      MouseGetPos(&mX, &mY)
      SendInput(rune)
      Sleep(super.cooldowns.click)
      MouseClick("left", super.partyList.%target%.x, super.partyList.%target%.y)
      MouseMove(mX, mY)
      Sleep(cooldown)
   }
}
