;; facts

(assert (Dermatitis enrojecimiento inflamacion picazon ardor))
(assert (Gastroenteritis vomito diarrea dolor_abdominal fiebre))
(assert (Conjuntivitis enrojecimiento_ocular secrecion_de_ojo picazon dolor_de_ojo))
(assert (Gripe escurrimiento_nasal ojos_llorosos fatiga dolor_muscular))
(assert (Alergia erupcion_cutanea secrecion_nasal picazon dificultad_para_respirar))
(assert (Faringitis puntos_blancos_en_garganta inflamacion dolor_cabeza dolor_al_tragar))

;;Rules para consulta de enfermedades

(defrule consultar-dermatitis (Dermatitis ?s1 ?s2 ?sintoma1 ?sintoma2) => 
(printout t "Enfemerdad: Dermatitis" crlf "Signos: " ?s1 ", " ?s2 crlf "Sintomas: " ?sintoma1 ", " ?sintoma2 crlf))

(defrule consultar-gastroenteritis (Gastroenteritis ?s1 ?s2 ?sintoma1 ?sintoma2) => 
(printout t "Enfemerdad: Gastroenteritis" crlf "Signos: " ?s1 ", " ?s2 crlf "Sintomas: " ?sintoma1 ", " ?sintoma2 crlf))

(defrule consultar-conjuntivitis (Conjuntivitis ?s1 ?s2 ?sintoma1 ?sintoma2) => 
(printout t "Enfemerdad: Conjuntivitis" crlf "Signos: " ?s1 ", " ?s2 crlf "Sintomas: " ?sintoma1 ", " ?sintoma2 crlf))

(defrule consultar-gripe (Gripe ?s1 ?s2 ?sintoma1 ?sintoma2) => 
(printout t "Enfemerdad: Gripe" crlf "Signos: " ?s1 ", " ?s2 crlf "Sintomas: " ?sintoma1 ", " ?sintoma2 crlf))

(defrule consultar-alergia (Alergia ?s1 ?s2 ?sintoma1 ?sintoma2) => 
(printout t "Enfemerdad: Alergia" crlf "Signos: " ?s1 ", " ?s2 crlf "Sintomas: " ?sintoma1 ", " ?sintoma2 crlf))

(defrule consultar-faringitis (Faringitis ?s1 ?s2 ?sintoma1 ?sintoma2) => 
(printout t "Enfemerdad: Dermatitis" crlf "Signos: " ?s1 ", " ?s2 crlf "Sintomas: " ?sintoma1 ", " ?sintoma2 crlf))

;; eliminar enfermedad

(defrule eliminar-enfermedad
=>
(printout t "Ingrese el el identificador de la enfermedad: ")
(bind ?input (read))
(if (retract ?input)
then
(printout t "Enfermedad eliminada correctamente!" crlf)
else
(printout t "identificador no encontrado" crlf))
)
