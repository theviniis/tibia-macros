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
