(define (problem Grid25x)
(:domain GridYx)
(:objects pos-0-0 pos-1-0 pos-0-1 pos-1-1 pos-0-2 pos-1-2 pos-0-3 pos-1-3 pos-0-4 pos-1-4 pos-0-5 pos-1-5 pos-0-6 pos-1-6 pos-0-7 pos-1-7 pos-0-8 pos-1-8 pos-0-9 pos-1-9 pos-0-10 pos-1-10 pos-0-11 pos-1-11 pos-0-12 pos-1-12 pos-0-13 pos-1-13 pos-0-14 pos-1-14 pos-0-15 pos-1-15 pos-0-16 pos-1-16 pos-0-17 pos-1-17 pos-0-18 pos-1-18 pos-0-19 pos-1-19 pos-0-20 pos-1-20 pos-0-21 pos-1-21 pos-0-22 pos-1-22 pos-0-23 pos-1-23 pos-0-24 pos-1-24)
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
(canmoveright pos-0-7 pos-0-8)
(canmovedown pos-0-7 pos-1-7)
(canmoveleft pos-1-7 pos-1-6)
(canmoveright pos-1-7 pos-1-8)
(canmoveup pos-1-7 pos-0-7)
(canmoveleft pos-0-8 pos-0-7)
(canmoveright pos-0-8 pos-0-9)
(canmovedown pos-0-8 pos-1-8)
(canmoveleft pos-1-8 pos-1-7)
(canmoveright pos-1-8 pos-1-9)
(canmoveup pos-1-8 pos-0-8)
(canmoveleft pos-0-9 pos-0-8)
(canmoveright pos-0-9 pos-0-10)
(canmovedown pos-0-9 pos-1-9)
(canmoveleft pos-1-9 pos-1-8)
(canmoveright pos-1-9 pos-1-10)
(canmoveup pos-1-9 pos-0-9)
(canmoveleft pos-0-10 pos-0-9)
(canmoveright pos-0-10 pos-0-11)
(canmovedown pos-0-10 pos-1-10)
(canmoveleft pos-1-10 pos-1-9)
(canmoveright pos-1-10 pos-1-11)
(canmoveup pos-1-10 pos-0-10)
(canmoveleft pos-0-11 pos-0-10)
(canmoveright pos-0-11 pos-0-12)
(canmovedown pos-0-11 pos-1-11)
(canmoveleft pos-1-11 pos-1-10)
(canmoveright pos-1-11 pos-1-12)
(canmoveup pos-1-11 pos-0-11)
(canmoveleft pos-0-12 pos-0-11)
(canmoveright pos-0-12 pos-0-13)
(canmovedown pos-0-12 pos-1-12)
(canmoveleft pos-1-12 pos-1-11)
(canmoveright pos-1-12 pos-1-13)
(canmoveup pos-1-12 pos-0-12)
(canmoveleft pos-0-13 pos-0-12)
(canmoveright pos-0-13 pos-0-14)
(canmovedown pos-0-13 pos-1-13)
(canmoveleft pos-1-13 pos-1-12)
(canmoveright pos-1-13 pos-1-14)
(canmoveup pos-1-13 pos-0-13)
(canmoveleft pos-0-14 pos-0-13)
(canmoveright pos-0-14 pos-0-15)
(canmovedown pos-0-14 pos-1-14)
(canmoveleft pos-1-14 pos-1-13)
(canmoveright pos-1-14 pos-1-15)
(canmoveup pos-1-14 pos-0-14)
(canmoveleft pos-0-15 pos-0-14)
(canmoveright pos-0-15 pos-0-16)
(canmovedown pos-0-15 pos-1-15)
(canmoveleft pos-1-15 pos-1-14)
(canmoveright pos-1-15 pos-1-16)
(canmoveup pos-1-15 pos-0-15)
(canmoveleft pos-0-16 pos-0-15)
(canmoveright pos-0-16 pos-0-17)
(canmovedown pos-0-16 pos-1-16)
(canmoveleft pos-1-16 pos-1-15)
(canmoveright pos-1-16 pos-1-17)
(canmoveup pos-1-16 pos-0-16)
(canmoveleft pos-0-17 pos-0-16)
(canmoveright pos-0-17 pos-0-18)
(canmovedown pos-0-17 pos-1-17)
(canmoveleft pos-1-17 pos-1-16)
(canmoveright pos-1-17 pos-1-18)
(canmoveup pos-1-17 pos-0-17)
(canmoveleft pos-0-18 pos-0-17)
(canmoveright pos-0-18 pos-0-19)
(canmovedown pos-0-18 pos-1-18)
(canmoveleft pos-1-18 pos-1-17)
(canmoveright pos-1-18 pos-1-19)
(canmoveup pos-1-18 pos-0-18)
(canmoveleft pos-0-19 pos-0-18)
(canmoveright pos-0-19 pos-0-20)
(canmovedown pos-0-19 pos-1-19)
(canmoveleft pos-1-19 pos-1-18)
(canmoveright pos-1-19 pos-1-20)
(canmoveup pos-1-19 pos-0-19)
(canmoveleft pos-0-20 pos-0-19)
(canmoveright pos-0-20 pos-0-21)
(canmovedown pos-0-20 pos-1-20)
(canmoveleft pos-1-20 pos-1-19)
(canmoveright pos-1-20 pos-1-21)
(canmoveup pos-1-20 pos-0-20)
(canmoveleft pos-0-21 pos-0-20)
(canmoveright pos-0-21 pos-0-22)
(canmovedown pos-0-21 pos-1-21)
(canmoveleft pos-1-21 pos-1-20)
(canmoveright pos-1-21 pos-1-22)
(canmoveup pos-1-21 pos-0-21)
(canmoveleft pos-0-22 pos-0-21)
(canmoveright pos-0-22 pos-0-23)
(canmovedown pos-0-22 pos-1-22)
(canmoveleft pos-1-22 pos-1-21)
(canmoveright pos-1-22 pos-1-23)
(canmoveup pos-1-22 pos-0-22)
(canmoveleft pos-0-23 pos-0-22)
(canmoveright pos-0-23 pos-0-24)
(canmovedown pos-0-23 pos-1-23)
(canmoveleft pos-1-23 pos-1-22)
(canmoveright pos-1-23 pos-1-24)
(canmoveup pos-1-23 pos-0-23)
(canmoveleft pos-0-24 pos-0-23)
(canmovedown pos-0-24 pos-1-24)
(canmoveleft pos-1-24 pos-1-23)
(canmoveup pos-1-24 pos-0-24)
(at pos-0-0)
(visited pos-0-0))
(:goal (and (visited pos-0-0) (visited pos-1-0) (visited pos-0-1) (visited pos-1-1) (visited pos-0-2) (visited pos-1-2) (visited pos-0-3) (visited pos-1-3) (visited pos-0-4) (visited pos-1-4) (visited pos-0-5) (visited pos-1-5) (visited pos-0-6) (visited pos-1-6) (visited pos-0-7) (visited pos-1-7) (visited pos-0-8) (visited pos-1-8) (visited pos-0-9) (visited pos-1-9) (visited pos-0-10) (visited pos-1-10) (visited pos-0-11) (visited pos-1-11) (visited pos-0-12) (visited pos-1-12) (visited pos-0-13) (visited pos-1-13) (visited pos-0-14) (visited pos-1-14) (visited pos-0-15) (visited pos-1-15) (visited pos-0-16) (visited pos-1-16) (visited pos-0-17) (visited pos-1-17) (visited pos-0-18) (visited pos-1-18) (visited pos-0-19) (visited pos-1-19) (visited pos-0-20) (visited pos-1-20) (visited pos-0-21) (visited pos-1-21) (visited pos-0-22) (visited pos-1-22) (visited pos-0-23) (visited pos-1-23) (visited pos-0-24) (visited pos-1-24)))
)