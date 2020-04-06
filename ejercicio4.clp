; ------------------------------------------------------------------------------------
; Examen IA: Ejercicio 4
; Autor: Raquel Perpiñá Clérigues
; Fecha: 6 - 4 - 2020
; ------------------------------------------------------------------------------------

(deffacts taller
(capaMax 8)
(posAnt 0)
(robot numBox 1 carga 0 capacidad 8)
(box n 1 piezas 0)
(box n 2 piezas 2)
(box n 3 piezas 8)
(box n 4 piezas 4)
(box n 5 piezas 0)
(piezas pos box boxIni 2 boxFin 1)
(piezas pos box boxIni 2 boxFin 1)
(piezas pos box boxIni 3 boxFin 4)
(piezas pos box boxIni 3 boxFin 4)
(piezas pos box boxIni 3 boxFin 4)
(piezas pos box boxIni 3 boxFin 4)
(piezas pos box boxIni 3 boxFin 4)
(piezas pos box boxIni 3 boxFin 4)
(piezas pos box boxIni 3 boxFin 4)
(piezas pos box boxIni 3 boxFin 4)
(piezas pos box boxIni 4 boxFin 3)
(piezas pos box boxIni 4 boxFin 3)
(piezas pos box boxIni 4 boxFin 3)
(piezas pos box boxIni 4 boxFin 3)
)

; ------------------------------------------------------------------------------------
; mover hasta el 5
; ------------------------------------------------------------------------------------
(defrule mover_a_5
    ?f <- (robot x ?x carga ?c capacidad ?cap)
    (and (not(?x 5)) eq (posAnt -(?x)))
    ;test posició anterior. guardar?
    =>
    (assert robot x (+ ?x 1) carga ?c capacidad ?cap)
