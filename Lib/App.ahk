class App {
   static hotkeys := {
      UH: "{F2}",
      AOE: "{F4}",
      MW: "{F17}",
      DEBUFF: "{F3}",
      BUFF: "+{F3}",
      ammu1: "{1}",
      ammu2: "+{1}",
      ring1: "^{F14}",
      ring2: "^{F13}",
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
      exhaust: 250,
      items: 100,
   }

   static callStack := {
      healingPlayer: false
   }
}
