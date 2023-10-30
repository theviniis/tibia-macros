class App {
   static options := {
      runScript: true,
      showGui: false,
      bindScroll: true,
      toggleItems: true,
   }

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
      utamo: "{F14}",
      SSA: "^{F1}",
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
      click: 5,
      items: 25,
      exhaust: 250,
      support: 250,
      rune: 250,
   }

   static callStack := {
      healingPlayer: '',
      isCursorOnActiveArea: true,
      exhaustRune: false,
   }

   static handleChangeOption(option, value) {
      this.options.%option% := value
   }
}
