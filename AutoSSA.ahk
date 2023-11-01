#HotIf WinActivate(Paths.tibia.client.process)
#Include <FindText>
#Include <index>
Persistent()

COOLDOWN := 200

SSA := "|<>*81$11.zzUyyRyvyvxnvvjuTtzlz3w3w7sTrzzk"
; SSA := "|<>*50$15.zzzzzzzzmTnyTzzjziDXwFzzzzjzszz7zzzzzw" ; Empty Ammu Value

checkAmmu() {
   if (WinActive(Paths.tibia.client.process)) {
      if not (ok := FindText(&X, &Y, 2905, 716, 2923, 734, 0, 0, SSA)) {
         Send(App.hotkeys.SSA)
      }
   }
}

SetTimer(checkAmmu, COOLDOWN)

MightRing := "|<>*93$7.ztsRan3zk"
; MightRing := "|<>*57$6.znlhnzU" ; Empty Ring Value

checkRing() {
   if (WinActive(Paths.tibia.client.process)) {
      if not (ok := FindText(&X, &Y, 2909, 763, 2919, 771, 0, 0, MightRing)) {
         Send(App.hotkeys.MR)
      }
   }
}

SetTimer(checkRing, COOLDOWN)

; Runs obs if not exists
if not (WinExist(Paths.tibia.obs.process)) {
   Run(Paths.tibia.obs.path, "C:\Program Files\obs-studio\bin\64bit")
}

; ==================== DON'T TOUCH ====================
iconPath := "./Asset/SSA.png"
if FileExist(iconPath) {
   TraySetIcon(iconPath)
}
