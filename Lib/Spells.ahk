class Spells extends App {
   static send(spell) {
      sendBlind(spell)
      Sleep(super.cooldowns.exhaust)
   }

   static debuff(spell) {
      shouldBindScroll := super.options.bindScroll
      isCursorOnCenter := super.callStack.isCursorOnActiveArea
      if (shouldBindScroll and isCursorOnCenter) {
         sendBlind(spell)
         Sleep(super.cooldowns.exhaust)
      } else {
         parsedHotkey := getParsedHotkey(A_ThisHotkey)
         SendInput(parsedHotkey)
      }
   }
}
