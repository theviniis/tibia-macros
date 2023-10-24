class User {
   static hotkeys := {
      UH: "{F2}",
      AOE: "{F4}",
      MW: "{F17}",
      DEBUFF: "{F3}",
      BUFF: "+{F3}"
   }

   static partyListPlayerGap := 22

   static partyList := {
      EK: {
         x: 325,
         y: 440,
      },
      RP: {
         x: 325,
         y: 440 + this.partyListPlayerGap,
      },
   }

   static cooldowns := {
      click: 0,
      exhaust: 250
   }

   static client := "ahk_exe client.exe"

   static callStack := {
      healingPlayer: false
   }
}
