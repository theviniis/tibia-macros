Persistent

CHECK_OPTIONS_CD := 100

checkOptions() {
   isScrollActive := GetKeyState("ScrollLock", "T")
   if (isScrollActive) {
      Suspend(1)
   }
   else {
      Suspend(0)
   }
}

SetTimer checkOptions, CHECK_OPTIONS_CD

checkCursorArea() {
   App.callStack.isCursorOnActiveArea := isMouseInArea(App.cursorAreas.active.x1, App.cursorAreas.active.y1, App.cursorAreas.active.x2, App.cursorAreas.active.y2)
   App.callStack.isCursorOnPartyListArea := isMouseInArea(App.cursorAreas.party.x1, App.cursorAreas.party.y1, App.cursorAreas.party.x2, App.cursorAreas.party.y2)

}

SetTimer checkCursorArea, CHECK_OPTIONS_CD
