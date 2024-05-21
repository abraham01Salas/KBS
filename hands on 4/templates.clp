(deftemplate smartphone
(slot id-smartphone)
(slot marca)
(slot modelo)
(slot precio)
(slot color)
)

(deftemplate computador
(slot id-computador)
(slot marca)
(slot modelo)
(slot precio)
(slot color)
)

(deftemplate accesorio
(slot id-accesorio)
(slot nombre)
(slot precio)
(slot marca)
)

(deftemplate cliente
(slot id-cliente)
(slot nombre)
(slot sexo)
(slot edad)
(slot telefono)
(slot nacionalidad)
)

(deftemplate orden-compra
(slot numero-orden)
(slot cliente)
(slot tipo-producto)
(slot id-producto)
(slot cantidad)
(slot tarjeta)
)

(deftemplate tarjeta-credito
(slot tarjeta)
(slot banco)
(slot grupo)
(slot fecha-expiracion)
(slot numero-cuenta)
(slot cvv)
)