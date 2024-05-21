;; En la compra de cualquier smartphone con tarjera BBVA tienes 12 MSI
(defrule ofrece-MSI
(orden-compra (tipo-producto smartphone) (id-producto ?id) (tarjeta ?t))
(smartphone (id-smartphone ?id) (marca ?mar) (modelo ?mod))
(tarjeta-credito (tarjeta ?t) (banco BBVA))
=>
(printout t "La compra de: " ?mar " " ?mod " se realizo a 12 MSI" crlf)
)

;; En la compra de una computadora Samsung se puede llevar cualquier accesorio al 10% de descuento
(defrule oferta-compra-dell
(orden-compra (tipo-producto computador) (cliente ?c) (id-producto ?p))
(computador (id-computador ?p) (marca Samsung) (modelo ?mod))
(cliente (id-cliente ?c) (nombre ?n))
=>
(printout t ?n " en su compra de la computadora Samsung " ?mod " se puede llevar un accesorio al 10% de descuento" crlf)
)

;; A partir de la compra de 3 smartphones con tarjetas Citibanamex se le regala unos audifonos apple in-ear y su compra se realiza a 24 MSI
(defrule compra-tres-smartphones
(orden-compra (tipo-producto smartphone) (cliente ?client) (tarjeta ?card) (cantidad ?cant)) (test (> ?cant 2))
(tarjeta-credito (tarjeta ?card) (banco Citibanamex))
(cliente (id-cliente ?client) (nombre ?name))
=>
(printout t ?name " su compra de los smartphones incluye unos unos audifonos apple in-ear y su compra se aplico a 24 MSI" crlf)
)

;; Si el cliente compra un computador, aplicar un 15% de descuento en un accesorio
(defrule aplicar-descuento-accesorio
(orden-compra (tipo-producto computador) (cliente ?client))
(cliente (id-cliente ?client) (nombre ?name))
=>
(printout t "Gracias a su compra cualquier accesorio que adquiera tendra un 15% de descuento" crlf)
)

;; CLIENTES QUE SOLO HAN COMPRADO SMARTPHONES
(defrule clientes-comprado-smartphones
(orden-compra (tipo-producto smartphone) (cliente ?client) (cantidad ?cant))
(cliente (id-cliente ?client) (nombre ?name))
=>
(printout t ?name " solo ha comprado " ?cant " smartphone(s)" crlf)
)

;; En su primera compra obtenga un descuento del 25% de descuento.
(defrule promocion-cliente-nuevo
(cliente (id-cliente ?cid) (nombre ?name))
(not (orden-compra (cliente ?cid)))
=>
(printout t ?name " en su primera compra obtenga un 25% de descuento" crlf)
)

;; CLIENTES QUE SOLO HAN COMPRADO COMPUTADORES Y CON QUE TARJETA
(defrule clientes-comprado-computadores
(orden-compra (tipo-producto computador) (cliente ?client) (cantidad ?cant) (tarjeta ?t))
(cliente (id-cliente ?client) (nombre ?name))
(tarjeta-credito (tarjeta ?t) (banco ?bank))
=>
(printout t "El cliente " ?name " ha comprado " ?cant " computador(es) con tarjeta de banco " ?bank crlf)
)

;; CLIENTES QUE SOLO HAN COMPRADO ACCESORIOS
(defrule clientes-comprado-accesorios
(orden-compra (tipo-producto accesorio) (cliente ?client) (id-producto ?pid) (cantidad ?cant))
(accesorio (id-accesorio ?pid) (nombre ?pname) (marca ?pmarc))
(cliente (id-cliente ?client) (nombre ?name))
=>
(printout t "El cliente " ?name " ha comprado " ?cant " " ?pname " " ?pmarc crlf)
)

;; CLIENTES QUE NO HAN COMPRADO NADA
(defrule clientes-sin-compras
(cliente (id-cliente ?cid) (nombre ?name))
(not (orden-compra (cliente ?cid)))
=>
(printout t "El cliente " ?name " no ha comprado nada" crlf)
)

;; SI EL CLIENTE COMPRA UNA COMPUTADORA, OFRECERLE UN MOUSE Y UN TECLADO CON EL 15% DE DESCUENTO
(defrule ofrecer-descuento-compra
(orden-compra (tipo-producto computador) (cliente ?client) (id-producto ?pid))
(cliente (id-cliente ?client) (nombre ?name))
(computador (id-computador ?pid) (marca ?pname) (modelo ?marcap))
=>
(printout t ?name ", en su compra de " ?pname " " ?marcap " se puede llevar un teclado y un mouse con el 15% de descuento C/U" crlf)
)

;; SI UN CLIENTE COMPRA UNA COMPUTADORA, UN ACCESORIO Y UN CELULAR CON TAJERTA Citibanamex, APLICAR EL 15% DE DESCUENTO Y A 12 MSI
(defrule ofrecer-descuento-msi
(orden-compra (cliente ?client) (tipo-producto computador) (tarjeta ?t))
(orden-compra (cliente ?client) (tipo-producto accesorio))
(orden-compra (cliente ?client) (tipo-producto smartphone))
(tarjeta-credito (tarjeta ?t) (banco Citibanamex))
=>
(printout t "Su compra tiene el 15% de descuento y esta disponible a 12 MSI" crlf)
)

;; En la compra de un iphone 15 pro max con tarjeta Citibanamex ofrecer 24 MSI
(defrule ofrecer-descuento-compra-iphone
(orden-compra (tipo-producto smartphone) (id-producto ?pid) (tarjeta ?t))
(smartphone (id-smartphone ?pid) (marca Apple) (modelo "15 Pro Max"))
(tarjeta-credito (tarjeta ?t) (banco Citibanamex))
=>
(printout t "Su compra puede ser diferida a 12 MSI" crlf)
)

;; Celulares arriba de 15,000
(defrule celulares-caros
(smartphone (marca ?mar) (modelo ?mod) (precio ?p)) (test (> ?p 15000))
=>
(printout t ?mar " " ?mod crlf)
)

;; accesorios menos de 1,000
(defrule accesorios-baratos
(accesorio (nombre ?n) (marca ?m) (precio ?p)) (test (< ?p 1000))
=>
(printout t ?n " " ?m crlf)
)
