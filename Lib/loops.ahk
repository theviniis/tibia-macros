Persistent

CHECK_OPTIONS_CD := 10

checkOptions() {
   isScrollActive := GetKeyState("ScrollLock", "T")
   if (isScrollActive and isClientActive()) {
      Suspend(1)
   } else if (!isClientActive()) {
      Suspend(0)
   }
}

SetTimer checkOptions, CHECK_OPTIONS_CD

checkCursorArea() {
   App.callStack.isCursorOnActiveArea := isMouseInArea(368, 24, 1477, 836)
}

SetTimer checkCursorArea, CHECK_OPTIONS_CD
