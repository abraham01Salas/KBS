(assert (isOn monkey floor))
(assert (isOn chair floor))
(assert (isOn desk floor))
(assert (hungry monkey))
(assert (nextTo chair desk))
(assert (nextTo monkey chair))
(assert (hangs banana ceiling))
(assert (isIn monkey room))
(assert (isIn banana room))
(assert (isAngry monkey))

;; reglas condicion accion (solo me salieron 4 :( ))

(defrule pickUp-chair
(hungry monkey)
(hangs banana ceiling)
(isOn chair floor)
(nextTo monkey chair)
=>
(assert (picksUp monkey chair))
(assert (nextTo monkey desk))
(retract 2)
(retract 5)
(retract 6)
)

(defrule put-chair-over-desk
(hungry monkey)
(hangs banana ceiling)
(picksUp monkey chair)
(nextTo monkey desk)
=>
(assert (putsChairOver monkey desk))
(assert (isOver chair desk))
(retract 11)
)

(defrule move-monkey
(nextTo monkey desk)
(isOver chair desk)
(hangs banana ceiling)
(hungry monkey)
=>
(assert (isOver monkey chair))
(retract 1)
(retract 12)
(retract 13)
)

(defrule eat-banana
(hangs banana ceiling)
(isOver monkey chair)
(isOver chair desk)
(hungry monkey)
=>
(assert (eate monkey banana))
(assert (happy monkey))
(assert (notHungry monkey))
(assert (notHangs banana ceiling))
(retract 4)
(retract 7)
(retract 9)
(retract 10)
)

(facts)
