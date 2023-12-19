#SingleInstance Force

CHECK_STACK_COOLDOWN := 10
TURN_COOLDOWN := 500
START_TIME := 0
class _App {
   static lastCall := 0

   static hotkeys := {
      runes: {
         UH: {
            hotkey: "{F2}",
            category: 'heal',
            type: 'rune_target'
         },
         AOE: {
            hotkey: "{F4}",
            category: 'fight',
            type: 'rune_click'
         },
         MW: {
            hotkey: "{F17}",
            category: 'support',
            type: 'rune_click'
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
      fight: [],
      support: []
   }


   static addCallStack(action) {
      currentCooldown := this.cooldowns.%action.category%
      currentStack := this.callStack.%action.category%
      currentStack.Push({
         hotkey: action.hotkey,
         category: action.category,
         cooldown: currentCooldown,
         createdAt: A_TickCount,
      })
   }


   static _callStack := []

   static addActionToStack(action) {
      this._callStack.push({
         hotkey: action.hotkey,
         category: action.category,
         cooldown: this.cooldowns.%action.category%,
         createdAt: A_TickCount,
      })
   }
}


checkStack() {
   TEXT := ''
   callStack := _App._callStack

   for key in callStack.OwnProps() {
      if (callStack.Length) {
         TEXT := TEXT . callStack[A_Index - 1].category
      }
   }

   ;  if (callStack.Length) {
   ;     ToolTip(callStack[callStack.Length].category)
   ;  }

   ToolTip(TEXT)
}

SetTimer(checkStack, 5)

; checkStack() {
;    currentStack := _App.callStack

;    text := ""
;    foo := []

;    for key in currentStack.OwnProps() {
;       category := currentStack.%key%

;       for action in category {
;          ;  currentAction := currentStack.%category%[A_Index]222
;          ;  elapsedTime := A_TickCount - action.createdAt
;          ;  foo.push({
;          ;     hotkey: currentAction.hotkey,
;          ;     category: currentAction.category,
;          ;     cooldown: currentAction.cooldown,
;          ;     createdAt: currentAction.createdAt,
;          ;     isExpired: !!elapsedTime,
;          ;  })
;       }

;    }

;    ToolTip(text)
;    return foo

; }

; SetTimer(checkStack, CHECK_STACK_COOLDOWN)


; clearStack() {
;    currentStack := _App.callStack
;    text := ""
;    expiredActionsIndex := []
;    for key in currentStack.OwnProps() {
;       currentStackItem := currentStack.%key%
;       for action in currentStackItem {
;          elapsedTime := A_TickCount - action.createdAt
;          text := text . action.category . ": " elapsedTime "`n"
;          if (elapsedTime > action.cooldown) {
;             expiredActionsIndex.push(A_Index)
;             currentStackItem.RemoveAt(A_Index)
;             break
;          }
;       }
;    }
;    ToolTip(text)
;    return expiredActionsIndex
; }

; SetTimer(clearStack, CHECK_STACK_COOLDOWN)


$1:: {
   _Rune.use("UH")
}


$2:: {
   _Rune.use("AOE")
}


class _Rune extends _App {
   static use(rune) {
      super.addActionToStack(super.hotkeys.runes.%rune%)

      ; super.addCallStack(super.hotkeys.runes.%rune%)
   }
}

#Include <App>
