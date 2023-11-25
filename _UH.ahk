#SingleInstance Force

class _App {
   static hotkeys := {
      runes: {
         UH: {
            hotkey: "{F2}",
            type: 'heal'
         },
         AOE: {
            hotkey: "{F4}",
            type: 'fight'
         },
         MW: {
            hotkey: "{F17}",
            type: 'support'
         }
      }
   }

   static cooldowns := {
      heal: 500,
      fight: 1000,
      support: 500
   }


   static callStack := {
      heal: [],
   }

   static addCallStack(action) {
      stack := this.callStack.%action.type%
      if (stack.Length = 0) {
         stack.Push({
            hotkey: action.hotkey,
            type: action.type,
            cooldown: this.cooldowns.%action.type%,
            createdAt: A_TickCount,
         })
      }
   }
}


class _Rune extends _App {
   static use(rune) {
      super.addCallStack(super.hotkeys.runes.%rune%)
   }
}

execute() {
   stack := _App.callStack
   text := ""

   for key in stack.OwnProps() {
      stackItem := stack.%key%
      if not (stackItem.Length = 0) {
         for action in stackItem {
            elapsedTime := A_TickCount - action.createdAt
            text := text . action.type . ": " elapsedTime "`n"
            if (elapsedTime > action.cooldown) {
               stackItem.RemoveAt(A_Index)
               break
            }
         }
      }
   }

   ToolTip(text)
}

SetTimer(execute, 10)

$2:: {
   _Rune.use("UH")
}
