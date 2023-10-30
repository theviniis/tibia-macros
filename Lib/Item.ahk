class Item extends App {
   static state := {
      ammu: {
         hotkeys: {
            1: super.hotkeys.ammu1,
            2: super.hotkeys.ammu2
         },
         isActive: false
      },
      ring: {
         hotkeys: {
            1: super.hotkeys.ring1,
            2: super.hotkeys.ring2
         },
         isActive: false
      },
   }

   static equip(item, cooldown := this.cooldowns.items) {
      Send(item)
      Sleep(cooldown)
   }

   static toggle(item) {
      shouldToggleItem := this.options.toggleItems
      if (shouldToggleItem) {
         this.state.%item%.isActive := !this.state.%item%.isActive
         if (this.state.%item%.isActive)
            this.equip(this.state.%item%.hotkeys.1)
         else
            this.equip(this.state.%item%.hotkeys.2)
      }
   }

   static toggleAmmuAndRing() {
      this.toggle("ammu")
      this.toggle("ring")
   }
}
