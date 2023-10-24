class Alert extends User {
   static send(label, timeout := 1000) {
      ToolTip(label)
      SetTimer(() => ToolTip(), timeout * -1)
   }
   static positions() {
      label := ""
      for player in this.partyList.OwnProps() {
         label .= player ": " this.partyList.%player%.x ", " this.partyList.%player%.y ";`n"
      }
      this.send(label)
      return label
   }
}
