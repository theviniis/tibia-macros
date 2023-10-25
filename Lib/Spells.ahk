class Spells extends App {
   static send(spell) {
      sendBlind(spell)
      Sleep(this.cooldowns.exhaust)
   }

   static debuff(spell) {
      isCursorOnMobArea := isMouseInArea(368, 24, 1477, 836)
      if (isCursorOnMobArea) {
         sendBlind(spell)
         Sleep(this.cooldowns.exhaust)
      } else {
         parsedHotkey := getParsedHotkey(A_ThisHotkey)
         SendInput(parsedHotkey)
      }
   }
}
