(define (problem Grid8x)
(:domain GridYx)
(:objects pos-0-0 pos-1-0 pos-0-1 pos-1-1 pos-0-2 pos-1-2 pos-0-3 pos-1-3 pos-0-4 pos-1-4 pos-0-5 pos-1-5 pos-0-6 pos-1-6 pos-0-7 pos-1-7)
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
(canmoveright pos-0-3 pos-0-4)
(canmovedown pos-0-3 pos-1-3)
(canmoveleft pos-1-3 pos-1-2)
(canmoveright pos-1-3 pos-1-4)
(canmoveup pos-1-3 pos-0-3)
(canmoveleft pos-0-4 pos-0-3)
(canmoveright pos-0-4 pos-0-5)
(canmovedown pos-0-4 pos-1-4)
(canmoveleft pos-1-4 pos-1-3)
(canmoveright pos-1-4 pos-1-5)
(canmoveup pos-1-4 pos-0-4)
(canmoveleft pos-0-5 pos-0-4)
(canmoveright pos-0-5 pos-0-6)
(canmovedown pos-0-5 pos-1-5)
(canmoveleft pos-1-5 pos-1-4)
(canmoveright pos-1-5 pos-1-6)
(canmoveup pos-1-5 pos-0-5)
(canmoveleft pos-0-6 pos-0-5)
(canmoveright pos-0-6 pos-0-7)
(canmovedown pos-0-6 pos-1-6)
(canmoveleft pos-1-6 pos-1-5)
(canmoveright pos-1-6 pos-1-7)
(canmoveup pos-1-6 pos-0-6)
(canmoveleft pos-0-7 pos-0-6)
(canmovedown pos-0-7 pos-1-7)
(canmoveleft pos-1-7 pos-1-6)
(canmoveup pos-1-7 pos-0-7)
(at pos-0-0)
(visited pos-0-0))
(:goal (and (visited pos-0-0) (visited pos-1-0) (visited pos-0-1) (visited pos-1-1) (visited pos-0-2) (visited pos-1-2) (visited pos-0-3) (visited pos-1-3) (visited pos-0-4) (visited pos-1-4) (visited pos-0-5) (visited pos-1-5) (visited pos-0-6) (visited pos-1-6) (visited pos-0-7) (visited pos-1-7)))
)