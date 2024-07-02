CREATE DATABASE sub_dos;
USE sub_dos;

CREATE TABLE LOCALIDAD(
	IdLocalidad INT AUTO_INCREMENT,
    Descripcion VARCHAR(20),
    PRIMARY KEY(IdLocalidad)
);

CREATE TABLE PLATO(
	IdPlato INT AUTO_INCREMENT,
    Descripcion VARCHAR(20),
    Precio FLOAT,
    PRIMARY KEY(IdPlato)
);

CREATE TABLE CLIENTE(
	IdCliente INT AUTO_INCREMENT,
    Nombre VARCHAR(20),
    Apellido VARCHAR(20),
    Calle VARCHAR(20),
    Nro INT,
    IdLocalidad INT,
    PRIMARY KEY(IdCliente),
    FOREIGN KEY(IdLocalidad) REFERENCES LOCALIDAD(IdLocalidad)
);

CREATE TABLE PEDIDOENCABEZADO(
	IdPedido INT AUTO_INCREMENT,
    IdCliente INT,
    Fecha DATE,
    PRIMARY KEY(IdPedido),
    FOREIGN KEY(IdCliente) REFERENCES CLIENTE(IdCliente)
);

CREATE TABLE PEDIDODETALLE(
	IdDetalle INT AUTO_INCREMENT,
    IdPedido INT,
    IdPlato INT,
    Cantidad INT,
    PRIMARY KEY(IdDetalle),
    FOREIGN KEY(IdPedido) REFERENCES PEDIDOENCABEZADO(IdPedido),
    FOREIGN KEY(IdPlato) REFERENCES PLATO(IdPlato)
);


###

INSERT INTO LOCALIDAD (Descripcion) VALUES ('Localidad1');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Localidad2');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Localidad3');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Localidad4');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Localidad5');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Localidad6');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Localidad7');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Localidad8');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Localidad9');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Localidad10');

##

INSERT INTO PLATO (Descripcion, Precio) VALUES ('Plato1', 10.50);
INSERT INTO PLATO (Descripcion, Precio) VALUES ('Plato2', 12.00);
INSERT INTO PLATO (Descripcion, Precio) VALUES ('Plato3', 9.75);
INSERT INTO PLATO (Descripcion, Precio) VALUES ('Plato4', 15.20);
INSERT INTO PLATO (Descripcion, Precio) VALUES ('Plato5', 8.60);
INSERT INTO PLATO (Descripcion, Precio) VALUES ('Plato6', 13.40);
INSERT INTO PLATO (Descripcion, Precio) VALUES ('Plato7', 11.30);
INSERT INTO PLATO (Descripcion, Precio) VALUES ('Plato8', 14.00);
INSERT INTO PLATO (Descripcion, Precio) VALUES ('Plato9', 7.50);
INSERT INTO PLATO (Descripcion, Precio) VALUES ('Plato10', 16.90);

## 

INSERT INTO CLIENTE (Nombre, Apellido, Calle, Nro, IdLocalidad) VALUES ('Nombre1', 'Apellido1', 'Calle1', 1, 1);
INSERT INTO CLIENTE (Nombre, Apellido, Calle, Nro, IdLocalidad) VALUES ('Nombre2', 'Apellido2', 'Calle2', 2, 2);
INSERT INTO CLIENTE (Nombre, Apellido, Calle, Nro, IdLocalidad) VALUES ('Nombre3', 'Apellido3', 'Calle3', 3, 3);
INSERT INTO CLIENTE (Nombre, Apellido, Calle, Nro, IdLocalidad) VALUES ('Nombre4', 'Apellido4', 'Calle4', 4, 4);
INSERT INTO CLIENTE (Nombre, Apellido, Calle, Nro, IdLocalidad) VALUES ('Nombre5', 'Apellido5', 'Calle5', 5, 5);
INSERT INTO CLIENTE (Nombre, Apellido, Calle, Nro, IdLocalidad) VALUES ('Nombre6', 'Apellido6', 'Calle6', 6, 6);
INSERT INTO CLIENTE (Nombre, Apellido, Calle, Nro, IdLocalidad) VALUES ('Nombre7', 'Apellido7', 'Calle7', 7, 7);
INSERT INTO CLIENTE (Nombre, Apellido, Calle, Nro, IdLocalidad) VALUES ('Nombre8', 'Apellido8', 'Calle8', 8, 8);
INSERT INTO CLIENTE (Nombre, Apellido, Calle, Nro, IdLocalidad) VALUES ('Nombre9', 'Apellido9', 'Calle9', 9, 9);
INSERT INTO CLIENTE (Nombre, Apellido, Calle, Nro, IdLocalidad) VALUES ('Nombre10', 'Apellido10', 'Calle10', 10, 10);


##

INSERT INTO PEDIDOENCABEZADO (IdCliente, Fecha) VALUES (1, '2024-07-01');
INSERT INTO PEDIDOENCABEZADO (IdCliente, Fecha) VALUES (2, '2024-07-02');
INSERT INTO PEDIDOENCABEZADO (IdCliente, Fecha) VALUES (3, '2024-07-03');
INSERT INTO PEDIDOENCABEZADO (IdCliente, Fecha) VALUES (4, '2024-07-04');
INSERT INTO PEDIDOENCABEZADO (IdCliente, Fecha) VALUES (5, '2024-07-05');
INSERT INTO PEDIDOENCABEZADO (IdCliente, Fecha) VALUES (6, '2024-07-06');
INSERT INTO PEDIDOENCABEZADO (IdCliente, Fecha) VALUES (7, '2024-07-07');
INSERT INTO PEDIDOENCABEZADO (IdCliente, Fecha) VALUES (8, '2024-07-08');
INSERT INTO PEDIDOENCABEZADO (IdCliente, Fecha) VALUES (9, '2024-07-09');
INSERT INTO PEDIDOENCABEZADO (IdCliente, Fecha) VALUES (10, '2024-07-10');
INSERT INTO PEDIDOENCABEZADO (IdCliente, Fecha) VALUES (5, '2023-01-5');
INSERT INTO PEDIDOENCABEZADO (IdCliente, Fecha) VALUES (11, '2022-01-6');


##

INSERT INTO PEDIDODETALLE (IdPedido, IdPlato, Cantidad) VALUES (1, 1, 2);
INSERT INTO PEDIDODETALLE (IdPedido, IdPlato, Cantidad) VALUES (2, 2, 3);
INSERT INTO PEDIDODETALLE (IdPedido, IdPlato, Cantidad) VALUES (3, 3, 1);
INSERT INTO PEDIDODETALLE (IdPedido, IdPlato, Cantidad) VALUES (4, 4, 2);
INSERT INTO PEDIDODETALLE (IdPedido, IdPlato, Cantidad) VALUES (5, 5, 1);
INSERT INTO PEDIDODETALLE (IdPedido, IdPlato, Cantidad) VALUES (6, 6, 3);
INSERT INTO PEDIDODETALLE (IdPedido, IdPlato, Cantidad) VALUES (7, 7, 2);
INSERT INTO PEDIDODETALLE (IdPedido, IdPlato, Cantidad) VALUES (8, 8, 1);
INSERT INTO PEDIDODETALLE (IdPedido, IdPlato, Cantidad) VALUES (9, 9, 3);
INSERT INTO PEDIDODETALLE (IdPedido, IdPlato, Cantidad) VALUES (10, 10, 2);
INSERT INTO PEDIDODETALLE (IdPedido, IdPlato, Cantidad) VALUES (10, 10, 2);
INSERT INTO PEDIDODETALLE (IdPedido, IdPlato, Cantidad) VALUES (11, 5, 3);

## 2
SELECT * FROM CLIENTE ORDER BY IdLocalidad , Nombre , Apellido;

## 3
SELECT PE.IdPedido , COUNT(DISTINCT P.Descripcion) , COUNT(*) , SUM(P.Precio * PD.Cantidad) FROM PEDIDODETALLE PD 
	JOIN 
PEDIDOENCABEZADO PE ON PD.IdPedido = PE.IdPedido 
	JOIN 
CLIENTE C ON PE.IdCliente = C.IdCliente
	JOIN 
PLATO P ON PD.IdPlato = P.IdPlato GROUP BY PE.IdPedido;

## 4
SELECT * FROM PEDIDODETALLE PD JOIN PEDIDOENCABEZADO PE ON PD.IdPedido = PE.IdPedido WHERE MONTH(PE.Fecha) = 1;

## 5
SELECT Descripcion FROM PLATO WHERE Precio = (SELECT MIN(Precio) FROM PLATO);

## 6

## 7

SELECT P.Descripcion
FROM PEDIDODETALLE PD
JOIN PEDIDOENCABEZADO PE ON PD.IdPedido = PE.IdPedido
JOIN PLATO P ON PD.IdPlato = P.IdPlato
GROUP BY P.Descripcion
HAVING COUNT(DISTINCT PE.IdCliente) > 1;

## 8

SELECT C.IdCliente, C.Nombre, C.Apellido
FROM CLIENTE C
WHERE NOT EXISTS (
    SELECT P.IdPlato
    FROM PLATO P
    WHERE NOT EXISTS (
        SELECT 1
        FROM PEDIDODETALLE PD
        JOIN PEDIDOENCABEZADO PE ON PD.IdPedido = PE.IdPedido
        WHERE PD.IdPlato = P.IdPlato AND PE.IdCliente = C.IdCliente
    )
);

## 9

SELECT P.Descripcion, P.Precio
FROM PLATO P
WHERE NOT EXISTS (
    SELECT 1
    FROM PEDIDODETALLE PD
    WHERE PD.IdPlato = P.IdPlato
);