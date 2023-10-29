sendTooltip(label, timeout := 1000) {
   ToolTip(label)
   SetTimer(() => ToolTip(), timeout * -1)
}

sendBlind(hotkey, cooldown := 0) {
   blind := "{Blind}" . hotkey
   SendInput(blind)
   Sleep(cooldown)
}

isMouseInArea(x1, y1, x2, y2) {
   MouseGetPos(&mX, &mY)
   if (mX >= x1 && mX <= x2 && mY >= y1 && mY <= y2) {
      return true
   } else {
      return false
   }
}

getParsedHotkey(hotkey) {
   return "{" . hotkey . "}"
}

isClientActive() {
   isClientActive := WinActive(Paths.tibia.client.process)
   return !!isClientActive
}


stringToNumber(string) {
   NumValue := 0
   if (string != "") {
      NumValue := Number(string)
   }
   return NumValue
}
