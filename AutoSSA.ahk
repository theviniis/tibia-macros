#HotIf WinActivate(Paths.tibia.client.process)
#Include <FindText>
#Include <index>

COOLDOWN := 200

iconPath := "./Asset/SSA.png"
if FileExist(iconPath) {
   TraySetIcon(iconPath)
}

SSA := "|<>*50$15.zzzzzzzzmTnyTzzjziDXwFzzzzjzszz7zzzzzw"

checkAmmu() {
   if (ok := FindText(&X, &Y, 2905, 716, 2923, 734, 0, 0, SSA)) {
      Send(App.hotkeys.SSA)
   }
}

MightRing := "|<>*57$6.znlhnzU"

checkRing() {
   if (ok := FindText(&X, &Y, 2909, 763, 2919, 771, 0, 0, MightRing)) {
      Send(App.hotkeys.MR)
   }
}

SetTimer(checkAmmu, COOLDOWN)
SetTimer(checkRing, COOLDOWN)
