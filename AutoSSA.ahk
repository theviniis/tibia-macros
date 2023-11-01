Persistent()
#Include <FindText>
#Include <index>

COOLDOWN := 150
SSA := "|<>*81$11.zzUyyRyvyvxnvvjuTtzlz3w3w7sTrzzk"
MightRing := "|<>*93$7.ztsRan3zk"
; SSA := "|<>*50$15.zzzzzzzzmTnyTzzjziDXwFzzzzjzszz7zzzzzw" ; Empty Ammu Value
; MightRing := "|<>*57$6.znlhnzU" ; Empty Ring Value

checkAmmu() {
   if (WinActive(Paths.tibia.client.process)) {
      if not (ok := FindText(&X, &Y, 2905, 716, 2923, 734, 0, 0, SSA)) {
         Send(App.hotkeys.SSA)
      }
   }
}

checkRing() {
   if (WinActive(Paths.tibia.client.process)) {
      if not (ok := FindText(&X, &Y, 2909, 763, 2919, 771, 0, 0, MightRing)) {
         Send(App.hotkeys.MR)
      }
   }
}

SetTimer(checkAmmu, COOLDOWN)
SetTimer(checkRing, COOLDOWN)

; ==================== DON'T TOUCH ====================
; Runs obs if not exists // Maybe you can touch
if not (WinExist(Paths.tibia.obs.process)) {
   Run(Paths.tibia.obs.path, "C:\Program Files\obs-studio\bin\64bit")
}

iconPath := "./Asset/SSA.png"
if FileExist(iconPath) {
   TraySetIcon(iconPath)
}
