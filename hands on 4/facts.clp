(deffacts smartphones
(smartphone (id-smartphone 1) (marca Samsung) (modelo "S24 ultra") (precio 20000) (color blanco))
(smartphone (id-smartphone 2) (marca Apple) (modelo "14 Pro Max") (precio 21000) (color plata))
(smartphone (id-smartphone 3) (marca Alcatel) (modelo "S12 Max") (precio 13000) (color rosa))
(smartphone (id-smartphone 4) (marca Samsung) (modelo "S20 FE") (precio 8000) (color azul))
(smartphone (id-smartphone 5) (marca Xiaomi) (modelo "Poco X3 pro") (precio 6500) (color negro))
(smartphone (id-smartphone 6) (marca Apple) (modelo "15 Pro Max") (precio 20500) (color rosa))
)

(deffacts computadores
(computador (id-computador 1) (marca Dell) (modelo "Inspiron 512") (precio 13500) (color blanco))
(computador (id-computador 2) (marca Samsung) (modelo "galaxy book 12") (precio 21400) (color azul))
(computador (id-computador 3) (marca Lenovo) (modelo "Ideapad 1") (precio 12400) (color plata))
(computador (id-computador 4) (marca Dell) (modelo "Inspiron 1800") (precio 25000) (color negro))
(computador (id-computador 5) (marca Lenovo) (modelo "thinkpad T14") (precio 24100) (color gris))
)

(deffacts accesorios
(accesorio (id-accesorio 1) (nombre mouse) (precio 150) (marca logitech))
(accesorio (id-accesorio 2) (nombre audifonos) (precio 500) (marca samsung))
(accesorio (id-accesorio 3) (nombre cargador) (precio 900) (marca apple))
(accesorio (id-accesorio 4) (nombre teclado) (precio 350) (marca logitech))
(accesorio (id-accesorio 5) (nombre "adapatador USB") (precio 100) (marca ugreen))
)

(deffacts clientes
(cliente (id-cliente 1) (nombre "Abraham de la torre") (sexo masculino) (edad 24) (telefono 3551602510) (nacionalidad Mexicano))
(cliente (id-cliente 2) (nombre "Ramon Estrada Garcia") (sexo masculino) (edad 30) (telefono 3332352040) (nacionalidad Peruano))
(cliente (id-cliente 3) (nombre "Juan Rodriguez perez") (sexo masculino) (edad 24) (telefono 314520140) (nacionalidad Argentino))
(cliente (id-cliente 4) (nombre "Fernanda Garcia Estrada") (sexo femenino) (edad 20) (telefono 3565201470) (nacionalidad Estadounidense))
(cliente (id-cliente 5) (nombre "Elizabeth Olsen") (sexo femenino) (edad 24) (telefono 0120352014) (nacionalidad Alemana))
(cliente (id-cliente 6) (nombre "Abraham Salas Dimas") (sexo masculino) (edad 24) (telefono 3151521680) (nacionalidad Mexicano))
)

(deffacts tarjetas-credito
(tarjeta-credito (tarjeta 1) (banco BBVA) (grupo visa) (fecha-expiracion 01-12-23) (numero-cuenta 4152-3500-4000-0000) (cvv 512))
(tarjeta-credito (tarjeta 2) (banco BBVA) (grupo mastercard) (fecha-expiracion 30-12-24) (numero-cuenta 2168-0000-0000-0000) (cvv 012))
(tarjeta-credito (tarjeta 3) (banco Banregio) (grupo visa) (fecha-expiracion 05-01-25) (numero-cuenta 4152-0000-0000-5555) (cvv 123))
(tarjeta-credito (tarjeta 4) (banco Santander) (grupo mastercard) (fecha-expiracion 10-02-25) (numero-cuenta 4152-3136-0000-0000) (cvv 263))
(tarjeta-credito (tarjeta 5) (banco Santander) (grupo "American Express") (fecha-expiracion 12-05-26) (numero-cuenta 5241-0000-0000-0000) (cvv 111))
(tarjeta-credito (tarjeta 6) (banco Citibanamex) (grupo mastercard) (fecha-expiracion 01-12-25) (numero-cuenta 4152-1111-1111-5555) (cvv 030))
(tarjeta-credito (tarjeta 7) (banco Liverpool) (grupo visa) (fecha-expiracion 05-12-24) (numero-cuenta 5420-0000-0000-0000) (cvv 123))
)

(deffacts ordenes-compra
(orden-compra (numero-orden 001) (cliente 3) (tipo-producto computador) (id-producto 2) (cantidad 1) (tarjeta 3))
(orden-compra (numero-orden 010) (cliente 1) (tipo-producto computador) (id-producto 5) (cantidad 2) (tarjeta 1))
(orden-compra (numero-orden 050) (cliente 2) (tipo-producto smartphone) (id-producto 1) (cantidad 2) (tarjeta 2))
(orden-compra (numero-orden 030) (cliente 5) (tipo-producto accesorio) (id-producto 4) (cantidad 1) (tarjeta 5))
(orden-compra (numero-orden 040) (cliente 3) (tipo-producto smartphone) (id-producto 5) (cantidad 1) (tarjeta 4))
(orden-compra (numero-orden 077) (cliente 2) (tipo-producto smartphone) (id-producto 3) (cantidad 5) (tarjeta 6))
(orden-compra (numero-orden 002) (cliente 1) (tipo-producto smartphone) (id-producto 6) (cantidad 1) (tarjeta 6))
)