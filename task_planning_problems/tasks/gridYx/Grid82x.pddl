(define (problem Grid82x)
(:domain GridYx)
(:objects pos-0-0 pos-1-0 pos-0-1 pos-1-1 pos-0-2 pos-1-2 pos-0-3 pos-1-3 pos-0-4 pos-1-4 pos-0-5 pos-1-5 pos-0-6 pos-1-6 pos-0-7 pos-1-7 pos-0-8 pos-1-8 pos-0-9 pos-1-9 pos-0-10 pos-1-10 pos-0-11 pos-1-11 pos-0-12 pos-1-12 pos-0-13 pos-1-13 pos-0-14 pos-1-14 pos-0-15 pos-1-15 pos-0-16 pos-1-16 pos-0-17 pos-1-17 pos-0-18 pos-1-18 pos-0-19 pos-1-19 pos-0-20 pos-1-20 pos-0-21 pos-1-21 pos-0-22 pos-1-22 pos-0-23 pos-1-23 pos-0-24 pos-1-24 pos-0-25 pos-1-25 pos-0-26 pos-1-26 pos-0-27 pos-1-27 pos-0-28 pos-1-28 pos-0-29 pos-1-29 pos-0-30 pos-1-30 pos-0-31 pos-1-31 pos-0-32 pos-1-32 pos-0-33 pos-1-33 pos-0-34 pos-1-34 pos-0-35 pos-1-35 pos-0-36 pos-1-36 pos-0-37 pos-1-37 pos-0-38 pos-1-38 pos-0-39 pos-1-39 pos-0-40 pos-1-40 pos-0-41 pos-1-41 pos-0-42 pos-1-42 pos-0-43 pos-1-43 pos-0-44 pos-1-44 pos-0-45 pos-1-45 pos-0-46 pos-1-46 pos-0-47 pos-1-47 pos-0-48 pos-1-48 pos-0-49 pos-1-49 pos-0-50 pos-1-50 pos-0-51 pos-1-51 pos-0-52 pos-1-52 pos-0-53 pos-1-53 pos-0-54 pos-1-54 pos-0-55 pos-1-55 pos-0-56 pos-1-56 pos-0-57 pos-1-57 pos-0-58 pos-1-58 pos-0-59 pos-1-59 pos-0-60 pos-1-60 pos-0-61 pos-1-61 pos-0-62 pos-1-62 pos-0-63 pos-1-63 pos-0-64 pos-1-64 pos-0-65 pos-1-65 pos-0-66 pos-1-66 pos-0-67 pos-1-67 pos-0-68 pos-1-68 pos-0-69 pos-1-69 pos-0-70 pos-1-70 pos-0-71 pos-1-71 pos-0-72 pos-1-72 pos-0-73 pos-1-73 pos-0-74 pos-1-74 pos-0-75 pos-1-75 pos-0-76 pos-1-76 pos-0-77 pos-1-77 pos-0-78 pos-1-78 pos-0-79 pos-1-79 pos-0-80 pos-1-80 pos-0-81 pos-1-81)
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
(canmoveright pos-0-24 pos-0-25)
(canmovedown pos-0-24 pos-1-24)
(canmoveleft pos-1-24 pos-1-23)
(canmoveright pos-1-24 pos-1-25)
(canmoveup pos-1-24 pos-0-24)
(canmoveleft pos-0-25 pos-0-24)
(canmoveright pos-0-25 pos-0-26)
(canmovedown pos-0-25 pos-1-25)
(canmoveleft pos-1-25 pos-1-24)
(canmoveright pos-1-25 pos-1-26)
(canmoveup pos-1-25 pos-0-25)
(canmoveleft pos-0-26 pos-0-25)
(canmoveright pos-0-26 pos-0-27)
(canmovedown pos-0-26 pos-1-26)
(canmoveleft pos-1-26 pos-1-25)
(canmoveright pos-1-26 pos-1-27)
(canmoveup pos-1-26 pos-0-26)
(canmoveleft pos-0-27 pos-0-26)
(canmoveright pos-0-27 pos-0-28)
(canmovedown pos-0-27 pos-1-27)
(canmoveleft pos-1-27 pos-1-26)
(canmoveright pos-1-27 pos-1-28)
(canmoveup pos-1-27 pos-0-27)
(canmoveleft pos-0-28 pos-0-27)
(canmoveright pos-0-28 pos-0-29)
(canmovedown pos-0-28 pos-1-28)
(canmoveleft pos-1-28 pos-1-27)
(canmoveright pos-1-28 pos-1-29)
(canmoveup pos-1-28 pos-0-28)
(canmoveleft pos-0-29 pos-0-28)
(canmoveright pos-0-29 pos-0-30)
(canmovedown pos-0-29 pos-1-29)
(canmoveleft pos-1-29 pos-1-28)
(canmoveright pos-1-29 pos-1-30)
(canmoveup pos-1-29 pos-0-29)
(canmoveleft pos-0-30 pos-0-29)
(canmoveright pos-0-30 pos-0-31)
(canmovedown pos-0-30 pos-1-30)
(canmoveleft pos-1-30 pos-1-29)
(canmoveright pos-1-30 pos-1-31)
(canmoveup pos-1-30 pos-0-30)
(canmoveleft pos-0-31 pos-0-30)
(canmoveright pos-0-31 pos-0-32)
(canmovedown pos-0-31 pos-1-31)
(canmoveleft pos-1-31 pos-1-30)
(canmoveright pos-1-31 pos-1-32)
(canmoveup pos-1-31 pos-0-31)
(canmoveleft pos-0-32 pos-0-31)
(canmoveright pos-0-32 pos-0-33)
(canmovedown pos-0-32 pos-1-32)
(canmoveleft pos-1-32 pos-1-31)
(canmoveright pos-1-32 pos-1-33)
(canmoveup pos-1-32 pos-0-32)
(canmoveleft pos-0-33 pos-0-32)
(canmoveright pos-0-33 pos-0-34)
(canmovedown pos-0-33 pos-1-33)
(canmoveleft pos-1-33 pos-1-32)
(canmoveright pos-1-33 pos-1-34)
(canmoveup pos-1-33 pos-0-33)
(canmoveleft pos-0-34 pos-0-33)
(canmoveright pos-0-34 pos-0-35)
(canmovedown pos-0-34 pos-1-34)
(canmoveleft pos-1-34 pos-1-33)
(canmoveright pos-1-34 pos-1-35)
(canmoveup pos-1-34 pos-0-34)
(canmoveleft pos-0-35 pos-0-34)
(canmoveright pos-0-35 pos-0-36)
(canmovedown pos-0-35 pos-1-35)
(canmoveleft pos-1-35 pos-1-34)
(canmoveright pos-1-35 pos-1-36)
(canmoveup pos-1-35 pos-0-35)
(canmoveleft pos-0-36 pos-0-35)
(canmoveright pos-0-36 pos-0-37)
(canmovedown pos-0-36 pos-1-36)
(canmoveleft pos-1-36 pos-1-35)
(canmoveright pos-1-36 pos-1-37)
(canmoveup pos-1-36 pos-0-36)
(canmoveleft pos-0-37 pos-0-36)
(canmoveright pos-0-37 pos-0-38)
(canmovedown pos-0-37 pos-1-37)
(canmoveleft pos-1-37 pos-1-36)
(canmoveright pos-1-37 pos-1-38)
(canmoveup pos-1-37 pos-0-37)
(canmoveleft pos-0-38 pos-0-37)
(canmoveright pos-0-38 pos-0-39)
(canmovedown pos-0-38 pos-1-38)
(canmoveleft pos-1-38 pos-1-37)
(canmoveright pos-1-38 pos-1-39)
(canmoveup pos-1-38 pos-0-38)
(canmoveleft pos-0-39 pos-0-38)
(canmoveright pos-0-39 pos-0-40)
(canmovedown pos-0-39 pos-1-39)
(canmoveleft pos-1-39 pos-1-38)
(canmoveright pos-1-39 pos-1-40)
(canmoveup pos-1-39 pos-0-39)
(canmoveleft pos-0-40 pos-0-39)
(canmoveright pos-0-40 pos-0-41)
(canmovedown pos-0-40 pos-1-40)
(canmoveleft pos-1-40 pos-1-39)
(canmoveright pos-1-40 pos-1-41)
(canmoveup pos-1-40 pos-0-40)
(canmoveleft pos-0-41 pos-0-40)
(canmoveright pos-0-41 pos-0-42)
(canmovedown pos-0-41 pos-1-41)
(canmoveleft pos-1-41 pos-1-40)
(canmoveright pos-1-41 pos-1-42)
(canmoveup pos-1-41 pos-0-41)
(canmoveleft pos-0-42 pos-0-41)
(canmoveright pos-0-42 pos-0-43)
(canmovedown pos-0-42 pos-1-42)
(canmoveleft pos-1-42 pos-1-41)
(canmoveright pos-1-42 pos-1-43)
(canmoveup pos-1-42 pos-0-42)
(canmoveleft pos-0-43 pos-0-42)
(canmoveright pos-0-43 pos-0-44)
(canmovedown pos-0-43 pos-1-43)
(canmoveleft pos-1-43 pos-1-42)
(canmoveright pos-1-43 pos-1-44)
(canmoveup pos-1-43 pos-0-43)
(canmoveleft pos-0-44 pos-0-43)
(canmoveright pos-0-44 pos-0-45)
(canmovedown pos-0-44 pos-1-44)
(canmoveleft pos-1-44 pos-1-43)
(canmoveright pos-1-44 pos-1-45)
(canmoveup pos-1-44 pos-0-44)
(canmoveleft pos-0-45 pos-0-44)
(canmoveright pos-0-45 pos-0-46)
(canmovedown pos-0-45 pos-1-45)
(canmoveleft pos-1-45 pos-1-44)
(canmoveright pos-1-45 pos-1-46)
(canmoveup pos-1-45 pos-0-45)
(canmoveleft pos-0-46 pos-0-45)
(canmoveright pos-0-46 pos-0-47)
(canmovedown pos-0-46 pos-1-46)
(canmoveleft pos-1-46 pos-1-45)
(canmoveright pos-1-46 pos-1-47)
(canmoveup pos-1-46 pos-0-46)
(canmoveleft pos-0-47 pos-0-46)
(canmoveright pos-0-47 pos-0-48)
(canmovedown pos-0-47 pos-1-47)
(canmoveleft pos-1-47 pos-1-46)
(canmoveright pos-1-47 pos-1-48)
(canmoveup pos-1-47 pos-0-47)
(canmoveleft pos-0-48 pos-0-47)
(canmoveright pos-0-48 pos-0-49)
(canmovedown pos-0-48 pos-1-48)
(canmoveleft pos-1-48 pos-1-47)
(canmoveright pos-1-48 pos-1-49)
(canmoveup pos-1-48 pos-0-48)
(canmoveleft pos-0-49 pos-0-48)
(canmoveright pos-0-49 pos-0-50)
(canmovedown pos-0-49 pos-1-49)
(canmoveleft pos-1-49 pos-1-48)
(canmoveright pos-1-49 pos-1-50)
(canmoveup pos-1-49 pos-0-49)
(canmoveleft pos-0-50 pos-0-49)
(canmoveright pos-0-50 pos-0-51)
(canmovedown pos-0-50 pos-1-50)
(canmoveleft pos-1-50 pos-1-49)
(canmoveright pos-1-50 pos-1-51)
(canmoveup pos-1-50 pos-0-50)
(canmoveleft pos-0-51 pos-0-50)
(canmoveright pos-0-51 pos-0-52)
(canmovedown pos-0-51 pos-1-51)
(canmoveleft pos-1-51 pos-1-50)
(canmoveright pos-1-51 pos-1-52)
(canmoveup pos-1-51 pos-0-51)
(canmoveleft pos-0-52 pos-0-51)
(canmoveright pos-0-52 pos-0-53)
(canmovedown pos-0-52 pos-1-52)
(canmoveleft pos-1-52 pos-1-51)
(canmoveright pos-1-52 pos-1-53)
(canmoveup pos-1-52 pos-0-52)
(canmoveleft pos-0-53 pos-0-52)
(canmoveright pos-0-53 pos-0-54)
(canmovedown pos-0-53 pos-1-53)
(canmoveleft pos-1-53 pos-1-52)
(canmoveright pos-1-53 pos-1-54)
(canmoveup pos-1-53 pos-0-53)
(canmoveleft pos-0-54 pos-0-53)
(canmoveright pos-0-54 pos-0-55)
(canmovedown pos-0-54 pos-1-54)
(canmoveleft pos-1-54 pos-1-53)
(canmoveright pos-1-54 pos-1-55)
(canmoveup pos-1-54 pos-0-54)
(canmoveleft pos-0-55 pos-0-54)
(canmoveright pos-0-55 pos-0-56)
(canmovedown pos-0-55 pos-1-55)
(canmoveleft pos-1-55 pos-1-54)
(canmoveright pos-1-55 pos-1-56)
(canmoveup pos-1-55 pos-0-55)
(canmoveleft pos-0-56 pos-0-55)
(canmoveright pos-0-56 pos-0-57)
(canmovedown pos-0-56 pos-1-56)
(canmoveleft pos-1-56 pos-1-55)
(canmoveright pos-1-56 pos-1-57)
(canmoveup pos-1-56 pos-0-56)
(canmoveleft pos-0-57 pos-0-56)
(canmoveright pos-0-57 pos-0-58)
(canmovedown pos-0-57 pos-1-57)
(canmoveleft pos-1-57 pos-1-56)
(canmoveright pos-1-57 pos-1-58)
(canmoveup pos-1-57 pos-0-57)
(canmoveleft pos-0-58 pos-0-57)
(canmoveright pos-0-58 pos-0-59)
(canmovedown pos-0-58 pos-1-58)
(canmoveleft pos-1-58 pos-1-57)
(canmoveright pos-1-58 pos-1-59)
(canmoveup pos-1-58 pos-0-58)
(canmoveleft pos-0-59 pos-0-58)
(canmoveright pos-0-59 pos-0-60)
(canmovedown pos-0-59 pos-1-59)
(canmoveleft pos-1-59 pos-1-58)
(canmoveright pos-1-59 pos-1-60)
(canmoveup pos-1-59 pos-0-59)
(canmoveleft pos-0-60 pos-0-59)
(canmoveright pos-0-60 pos-0-61)
(canmovedown pos-0-60 pos-1-60)
(canmoveleft pos-1-60 pos-1-59)
(canmoveright pos-1-60 pos-1-61)
(canmoveup pos-1-60 pos-0-60)
(canmoveleft pos-0-61 pos-0-60)
(canmoveright pos-0-61 pos-0-62)
(canmovedown pos-0-61 pos-1-61)
(canmoveleft pos-1-61 pos-1-60)
(canmoveright pos-1-61 pos-1-62)
(canmoveup pos-1-61 pos-0-61)
(canmoveleft pos-0-62 pos-0-61)
(canmoveright pos-0-62 pos-0-63)
(canmovedown pos-0-62 pos-1-62)
(canmoveleft pos-1-62 pos-1-61)
(canmoveright pos-1-62 pos-1-63)
(canmoveup pos-1-62 pos-0-62)
(canmoveleft pos-0-63 pos-0-62)
(canmoveright pos-0-63 pos-0-64)
(canmovedown pos-0-63 pos-1-63)
(canmoveleft pos-1-63 pos-1-62)
(canmoveright pos-1-63 pos-1-64)
(canmoveup pos-1-63 pos-0-63)
(canmoveleft pos-0-64 pos-0-63)
(canmoveright pos-0-64 pos-0-65)
(canmovedown pos-0-64 pos-1-64)
(canmoveleft pos-1-64 pos-1-63)
(canmoveright pos-1-64 pos-1-65)
(canmoveup pos-1-64 pos-0-64)
(canmoveleft pos-0-65 pos-0-64)
(canmoveright pos-0-65 pos-0-66)
(canmovedown pos-0-65 pos-1-65)
(canmoveleft pos-1-65 pos-1-64)
(canmoveright pos-1-65 pos-1-66)
(canmoveup pos-1-65 pos-0-65)
(canmoveleft pos-0-66 pos-0-65)
(canmoveright pos-0-66 pos-0-67)
(canmovedown pos-0-66 pos-1-66)
(canmoveleft pos-1-66 pos-1-65)
(canmoveright pos-1-66 pos-1-67)
(canmoveup pos-1-66 pos-0-66)
(canmoveleft pos-0-67 pos-0-66)
(canmoveright pos-0-67 pos-0-68)
(canmovedown pos-0-67 pos-1-67)
(canmoveleft pos-1-67 pos-1-66)
(canmoveright pos-1-67 pos-1-68)
(canmoveup pos-1-67 pos-0-67)
(canmoveleft pos-0-68 pos-0-67)
(canmoveright pos-0-68 pos-0-69)
(canmovedown pos-0-68 pos-1-68)
(canmoveleft pos-1-68 pos-1-67)
(canmoveright pos-1-68 pos-1-69)
(canmoveup pos-1-68 pos-0-68)
(canmoveleft pos-0-69 pos-0-68)
(canmoveright pos-0-69 pos-0-70)
(canmovedown pos-0-69 pos-1-69)
(canmoveleft pos-1-69 pos-1-68)
(canmoveright pos-1-69 pos-1-70)
(canmoveup pos-1-69 pos-0-69)
(canmoveleft pos-0-70 pos-0-69)
(canmoveright pos-0-70 pos-0-71)
(canmovedown pos-0-70 pos-1-70)
(canmoveleft pos-1-70 pos-1-69)
(canmoveright pos-1-70 pos-1-71)
(canmoveup pos-1-70 pos-0-70)
(canmoveleft pos-0-71 pos-0-70)
(canmoveright pos-0-71 pos-0-72)
(canmovedown pos-0-71 pos-1-71)
(canmoveleft pos-1-71 pos-1-70)
(canmoveright pos-1-71 pos-1-72)
(canmoveup pos-1-71 pos-0-71)
(canmoveleft pos-0-72 pos-0-71)
(canmoveright pos-0-72 pos-0-73)
(canmovedown pos-0-72 pos-1-72)
(canmoveleft pos-1-72 pos-1-71)
(canmoveright pos-1-72 pos-1-73)
(canmoveup pos-1-72 pos-0-72)
(canmoveleft pos-0-73 pos-0-72)
(canmoveright pos-0-73 pos-0-74)
(canmovedown pos-0-73 pos-1-73)
(canmoveleft pos-1-73 pos-1-72)
(canmoveright pos-1-73 pos-1-74)
(canmoveup pos-1-73 pos-0-73)
(canmoveleft pos-0-74 pos-0-73)
(canmoveright pos-0-74 pos-0-75)
(canmovedown pos-0-74 pos-1-74)
(canmoveleft pos-1-74 pos-1-73)
(canmoveright pos-1-74 pos-1-75)
(canmoveup pos-1-74 pos-0-74)
(canmoveleft pos-0-75 pos-0-74)
(canmoveright pos-0-75 pos-0-76)
(canmovedown pos-0-75 pos-1-75)
(canmoveleft pos-1-75 pos-1-74)
(canmoveright pos-1-75 pos-1-76)
(canmoveup pos-1-75 pos-0-75)
(canmoveleft pos-0-76 pos-0-75)
(canmoveright pos-0-76 pos-0-77)
(canmovedown pos-0-76 pos-1-76)
(canmoveleft pos-1-76 pos-1-75)
(canmoveright pos-1-76 pos-1-77)
(canmoveup pos-1-76 pos-0-76)
(canmoveleft pos-0-77 pos-0-76)
(canmoveright pos-0-77 pos-0-78)
(canmovedown pos-0-77 pos-1-77)
(canmoveleft pos-1-77 pos-1-76)
(canmoveright pos-1-77 pos-1-78)
(canmoveup pos-1-77 pos-0-77)
(canmoveleft pos-0-78 pos-0-77)
(canmoveright pos-0-78 pos-0-79)
(canmovedown pos-0-78 pos-1-78)
(canmoveleft pos-1-78 pos-1-77)
(canmoveright pos-1-78 pos-1-79)
(canmoveup pos-1-78 pos-0-78)
(canmoveleft pos-0-79 pos-0-78)
(canmoveright pos-0-79 pos-0-80)
(canmovedown pos-0-79 pos-1-79)
(canmoveleft pos-1-79 pos-1-78)
(canmoveright pos-1-79 pos-1-80)
(canmoveup pos-1-79 pos-0-79)
(canmoveleft pos-0-80 pos-0-79)
(canmoveright pos-0-80 pos-0-81)
(canmovedown pos-0-80 pos-1-80)
(canmoveleft pos-1-80 pos-1-79)
(canmoveright pos-1-80 pos-1-81)
(canmoveup pos-1-80 pos-0-80)
(canmoveleft pos-0-81 pos-0-80)
(canmovedown pos-0-81 pos-1-81)
(canmoveleft pos-1-81 pos-1-80)
(canmoveup pos-1-81 pos-0-81)
(at pos-0-0)
(visited pos-0-0))
(:goal (and (visited pos-0-0) (visited pos-1-0) (visited pos-0-1) (visited pos-1-1) (visited pos-0-2) (visited pos-1-2) (visited pos-0-3) (visited pos-1-3) (visited pos-0-4) (visited pos-1-4) (visited pos-0-5) (visited pos-1-5) (visited pos-0-6) (visited pos-1-6) (visited pos-0-7) (visited pos-1-7) (visited pos-0-8) (visited pos-1-8) (visited pos-0-9) (visited pos-1-9) (visited pos-0-10) (visited pos-1-10) (visited pos-0-11) (visited pos-1-11) (visited pos-0-12) (visited pos-1-12) (visited pos-0-13) (visited pos-1-13) (visited pos-0-14) (visited pos-1-14) (visited pos-0-15) (visited pos-1-15) (visited pos-0-16) (visited pos-1-16) (visited pos-0-17) (visited pos-1-17) (visited pos-0-18) (visited pos-1-18) (visited pos-0-19) (visited pos-1-19) (visited pos-0-20) (visited pos-1-20) (visited pos-0-21) (visited pos-1-21) (visited pos-0-22) (visited pos-1-22) (visited pos-0-23) (visited pos-1-23) (visited pos-0-24) (visited pos-1-24) (visited pos-0-25) (visited pos-1-25) (visited pos-0-26) (visited pos-1-26) (visited pos-0-27) (visited pos-1-27) (visited pos-0-28) (visited pos-1-28) (visited pos-0-29) (visited pos-1-29) (visited pos-0-30) (visited pos-1-30) (visited pos-0-31) (visited pos-1-31) (visited pos-0-32) (visited pos-1-32) (visited pos-0-33) (visited pos-1-33) (visited pos-0-34) (visited pos-1-34) (visited pos-0-35) (visited pos-1-35) (visited pos-0-36) (visited pos-1-36) (visited pos-0-37) (visited pos-1-37) (visited pos-0-38) (visited pos-1-38) (visited pos-0-39) (visited pos-1-39) (visited pos-0-40) (visited pos-1-40) (visited pos-0-41) (visited pos-1-41) (visited pos-0-42) (visited pos-1-42) (visited pos-0-43) (visited pos-1-43) (visited pos-0-44) (visited pos-1-44) (visited pos-0-45) (visited pos-1-45) (visited pos-0-46) (visited pos-1-46) (visited pos-0-47) (visited pos-1-47) (visited pos-0-48) (visited pos-1-48) (visited pos-0-49) (visited pos-1-49) (visited pos-0-50) (visited pos-1-50) (visited pos-0-51) (visited pos-1-51) (visited pos-0-52) (visited pos-1-52) (visited pos-0-53) (visited pos-1-53) (visited pos-0-54) (visited pos-1-54) (visited pos-0-55) (visited pos-1-55) (visited pos-0-56) (visited pos-1-56) (visited pos-0-57) (visited pos-1-57) (visited pos-0-58) (visited pos-1-58) (visited pos-0-59) (visited pos-1-59) (visited pos-0-60) (visited pos-1-60) (visited pos-0-61) (visited pos-1-61) (visited pos-0-62) (visited pos-1-62) (visited pos-0-63) (visited pos-1-63) (visited pos-0-64) (visited pos-1-64) (visited pos-0-65) (visited pos-1-65) (visited pos-0-66) (visited pos-1-66) (visited pos-0-67) (visited pos-1-67) (visited pos-0-68) (visited pos-1-68) (visited pos-0-69) (visited pos-1-69) (visited pos-0-70) (visited pos-1-70) (visited pos-0-71) (visited pos-1-71) (visited pos-0-72) (visited pos-1-72) (visited pos-0-73) (visited pos-1-73) (visited pos-0-74) (visited pos-1-74) (visited pos-0-75) (visited pos-1-75) (visited pos-0-76) (visited pos-1-76) (visited pos-0-77) (visited pos-1-77) (visited pos-0-78) (visited pos-1-78) (visited pos-0-79) (visited pos-1-79) (visited pos-0-80) (visited pos-1-80) (visited pos-0-81) (visited pos-1-81)))
)