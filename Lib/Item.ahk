class Item extends App {
   static state := {
      ammu: {
         hotkeys: {
            1: this.hotkeys.ammu1,
            2: this.hotkeys.ammu2
         },
         isActive: false
      },
      ring: {
         hotkeys: {
            1: this.hotkeys.ring1,
            2: this.hotkeys.ring2
         },
         isActive: false
      },
   }

   static equip(item) {
      Send(item)
      Sleep(this.cooldowns.items)
   }

   static toggle(item) {
      this.state.%item%.isActive := !this.state.%item%.isActive
      if (this.state.%item%.isActive)
         this.equip(this.state.%item%.hotkeys.1)
      else
         this.equip(this.state.%item%.hotkeys.2)
   }
}
