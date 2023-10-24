sendTooltip(label, timeout := 1000) {
   ToolTip(label)
   SetTimer(() => ToolTip(), timeout * -1)
}


sendBlind(hotkey) {
   blind := "{Blind}" . hotkey
   SendInput(blind)
   return blind
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
