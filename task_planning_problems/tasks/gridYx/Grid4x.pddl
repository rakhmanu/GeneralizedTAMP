(define (problem Grid4x)
(:domain GridYx)
(:objects pos-0-0 pos-1-0 pos-0-1 pos-1-1 pos-0-2 pos-1-2 pos-0-3 pos-1-3)
(:init (canmoveright pos-0-0 pos-0-1)
(canmovedown pos-0-0 pos-1-0)
(canmoveright pos-1-0 pos-1-1)
(canmoveup pos-1-0 pos-0-0)
(canmoveleft pos-0-1 pos-0-0)
(canmoveright pos-0-1 pos-0-2)
(canmovedown pos-0-1 pos-1-1)
(canmoveleft pos-1-1 pos-1-0)
(canmoveright pos-1-1 pos-1-2)
(canmoveup pos-1-1 pos-0-1)
(canmoveleft pos-0-2 pos-0-1)
(canmoveright pos-0-2 pos-0-3)
(canmovedown pos-0-2 pos-1-2)
(canmoveleft pos-1-2 pos-1-1)
(canmoveright pos-1-2 pos-1-3)
(canmoveup pos-1-2 pos-0-2)
(canmoveleft pos-0-3 pos-0-2)
(canmovedown pos-0-3 pos-1-3)
(canmoveleft pos-1-3 pos-1-2)
(canmoveup pos-1-3 pos-0-3)
(at pos-0-0)
(visited pos-0-0))
(:goal (and (visited pos-0-0) (visited pos-1-0) (visited pos-0-1) (visited pos-1-1) (visited pos-0-2) (visited pos-1-2) (visited pos-0-3) (visited pos-1-3)))
)