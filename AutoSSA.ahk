#HotIf WinActivate(Paths.tibia.client.process)
#Include <FindText>
#Include <index>
Persistent()

COOLDOWN := 200

SSA := "|<>*50$15.zzzzzzzzmTnyTzzjziDXwFzzzzjzszz7zzzzzw" ; Isso é meio que a imagem do SSA convertida pra texto

checkAmmu() {
   if (ok := FindText(&X, &Y, 2905, 716, 2923, 734, 0, 0, SSA)) {
      Send(App.hotkeys.SSA)
   }
}

SetTimer(checkAmmu, COOLDOWN)

MightRing := "|<>*57$6.znlhnzU" ; Mesma coisa com o might ring

checkRing() {
   if (ok := FindText(&X, &Y, 2909, 763, 2919, 771, 0, 0, MightRing)) {
      Send(App.hotkeys.MR)
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
