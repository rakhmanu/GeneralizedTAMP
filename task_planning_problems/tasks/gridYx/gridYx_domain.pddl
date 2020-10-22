(define (domain GridYx)
  (:requirements :strips)
  (:predicates (visited ?p)
           (at ?p)
           (canmoveup ?p1 ?p2)
           (canmovedown ?p1 ?p2)
           (canmoveleft ?p1 ?p2)
           (canmoveright ?p1 ?p2)
    )
  (:action moveup
         :parameters (?p1 ?p2)
         :precondition (and (not (visited ?p2)) (at ?p1) (canmoveup ?p1 ?p2))
         :effect (and (not (at ?p1)) (at ?p2) (visited ?p2))
    )
  (:action movedown
         :parameters (?p1 ?p2)
         :precondition (and (not (visited ?p2)) (at ?p1) (canmovedown ?p1 ?p2))
         :effect (and (not (at ?p1)) (at ?p2) (visited ?p2))
    )

  (:action moveleft
         :parameters (?p1 ?p2)
         :precondition (and (not (visited ?p2)) (at ?p1) (canmoveleft ?p1 ?p2))
         :effect (and (not (at ?p1)) (at ?p2) (visited ?p2))
    )

  (:action moveright
         :parameters (?p1 ?p2)
         :precondition (and (not (visited ?p2)) (at ?p1) (canmoveright ?p1 ?p2))
         :effect (and (not (at ?p1)) (at ?p2) (visited ?p2))
    )
)
