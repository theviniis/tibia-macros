class Spells extends App {
   static send(spell) {
      SendInput(spell)
      Sleep(super.cooldowns.exhaust)
   }

   static bindedOnCenter(spell) {
      shouldBindScroll := super.options.bindScroll
      isCursorOnCenter := super.callStack.isCursorOnActiveArea
      if (shouldBindScroll and isCursorOnCenter) {
         SendInput(spell)
         Sleep(super.cooldowns.exhaust)
      } else {
         parsedHotkey := getParsedHotkey(A_ThisHotkey)
         SendInput(parsedHotkey)
      }
   }
}
