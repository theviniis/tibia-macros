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
      click: 2,
      items: 100,
      exhaust: 250,
      support: 250,
      rune: 250,
   }

   static callStack := {
      healingPlayer: '',
      exhaustRune: false,
      isCursorOnActiveArea: true,
      isCursorOnPartyListArea: false,
   }

   static cursorAreas := {
      active: {
         x1: 372,
         x2: 1472,
         y1: 26,
         y2: 834,
         middleX: (372 + 1472) / 2,
         middleY: (26 + 834) / 2,
      },
      party: {
         x1: 176,
         x2: 348,
         y1: 408,
         y2: 488
      }
   }


   static handleChangeOption(option, value) {
      this.options.%option% := value
   }
}
