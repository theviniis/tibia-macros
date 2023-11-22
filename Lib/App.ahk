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
      ring1: "^{F13}",
      ring2: "{r}",
      utamo: "{F14}",
      SSA: "{F16}",
      MR: "{r}"
   }

   static partyListPlayerGap := 22

   static partyList := {
      EK: {
         x: 280,
         y: 440,
      },
      RP: {
         x: 280,
         y: 440 + this.partyListPlayerGap,
      },
   }

   static cooldowns := {
      click: 5,
      items: 100,
      exhaust: 250,
      support: 250,
      rune: 500,
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
