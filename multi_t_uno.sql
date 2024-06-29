CREATE DATABASE multi_tabla_uno;
USE multi_tabla_uno;

CREATE TABLE ALMACEN(
	Nro INT AUTO_INCREMENT,
    Responsable VARCHAR(20),
    PRIMARY KEY(Nro)
);

CREATE TABLE ARTICULO(
	CodArt INT AUTO_INCREMENT,
    Descripcion VARCHAR(50),
    Precio FLOAT(6,2),
    PRIMARY KEY(CodArt)
);

CREATE TABLE MATERIAL(
	CodMat INT AUTO_INCREMENT,
    Descripcion VARCHAR(50),
    PRIMARY KEY(CodMat)
);

CREATE TABLE CIUDAD(
	CodCiudad INT AUTO_INCREMENT,
    Nombre VARCHAR(20),
    PRIMARY KEY(CodCiudad)
);

CREATE TABLE PROVEEDOR(
	CodProv INT AUTO_INCREMENT,
    Nombre VARCHAR(20),
    Domicilio VARCHAR(50),
    CodCiudad INT,
    PRIMARY KEY(CodProv),
    FOREIGN KEY(codCiudad) REFERENCES CIUDAD (CodCiudad)
);

CREATE TABLE CONTIENE(
	Cod_Contiene INT AUTO_INCREMENT,
    Nro INT,
    CodArt INT,
    PRIMARY KEY(Cod_Contiene),
    FOREIGN KEY(Nro) REFERENCES ALMACEN(Nro),
    FOREIGN KEY(CodArt) REFERENCES ARTICULO(CodArt)
);

CREATE TABLE COMPUESTO_POR(
	Cod_Composicion INT AUTO_INCREMENT,
    CodArt INT,
    CodMat INT,
    PRIMARY KEY(Cod_Composicion),
    FOREIGN KEY(CodArt) REFERENCES ARTICULO(CodArt),
    FOREIGN KEY(CodMat) REFERENCES MATERIAL(CodMat)
);

CREATE TABLE PROVISTO_POR(
	Cod_Provisto INT AUTO_INCREMENT,
    CodMat INT,
    CodProv INT,
    PRIMARY KEY(Cod_Provisto),
    FOREIGN KEY(CodMat) REFERENCES MATERIAL(CodMat),
    FOREIGN KEY(CodProv) REFERENCES PROVEEDOR(CodProv)
);

/*------DATOS------*/

INSERT INTO ALMACEN (Nro, Responsable) 
VALUES (001, 'Alfredo'), 
(002, 'Esteban'), 
(003, 'Juan'), 
(004, 'Roberto'); 
 
INSERT INTO ARTICULO (CodArt, Descripcion, Precio) 
VALUES (001, 'Pan', 130.70), 
(002, 'Facturas', 300.00), 
(003, 'Cheese Cake', 450.87), 
(004, 'Pasta Frola', 278.90); 
 
INSERT INTO MATERIAL (CodMat,  Descripcion) 
VALUES (001, 'Aceite'), 
(002, 'Harina'), 
(003, 'Levadura'), 
(004, 'Huevo'), 
(005, 'Azucar'), 
(006, 'Sal'), 
(007, 'Agua'); 
 
INSERT INTO CIUDAD(CodCiudad, Nombre) 
VALUES (1, 'La Plata'), 
(2, 'Capital Federal'), 
(3, 'Ramos Mejia'), 
(4, 'La Matanza'); 
 
INSERT INTO PROVEEDOR (CodProv, Nombre, Domicilio, 
CodCiudad) 
VALUES(1, 'Arcor', 'Ayacucho 1234', 1), 
(2, 'Molinos', 'Yatay 456', 4), 
(3, 'Ledesma', 'Mario Bravo 987', 1), 
(4, 'Marolio', 'Potosi 098', 2), 
(5, 'Glaciar', 'Sarmiento 555', 3); 
 
INSERT INTO CONTIENE (Nro, CodArt) 
VALUES (001, 001), 
(001, 002), 
(001, 003), 
(001, 004), 
(002, 003), 
(002, 004), 
(003, 001), 
(004, 002); 

INSERT INTO COMPUESTO_POR (CodArt, CodMat) 
VALUES(001, 001), 
(001, 002), 
(001, 003), 
(002, 002), 
(002, 005), 
(002, 007), 
(003, 001), 
(003, 002), 
(003, 006), 
(004, 007); 
 
INSERT INTO PROVISTO_POR(CodMat, CodProv) 
VALUES (001, 1), 
(002, 3), 
(003, 5), 
(004, 4), 
(005, 2), 
(006, 2), 
(007, 5); 

/*1*/

SELECT PROV.NOMBRE , C.NOMBRE AS NOMBRE_CIUDAD 
FROM PROVEEDOR PROV 
JOIN CIUDAD C ON PROV.CodCiudad = C.CodCiudad;

/*2*/

SELECT PROV.NOMBRE AS NOMBRE_CIUDAD 
FROM PROVEEDOR PROV 
JOIN CIUDAD C ON PROV.CodCiudad = C.CodCiudad 
WHERE C.NOMBRE LIKE 'La Plata';

/*3*/

SELECT A.Nro 
FROM CONTIENE C 
JOIN ALMACEN A ON C.Nro = A.Nro 
JOIN ARTICULO ART ON C.CodArt = ART.CodArt 
WHERE ART.Descripcion LIKE 'P%' ;

/*4*/

SELECT A.Nro, A.Responsable 
FROM CONTIENE C 
JOIN ALMACEN A ON C.Nro = A.Nro 
JOIN ARTICULO ART ON C.CodArt = ART.CodArt 
WHERE ART.Descripcion LIKE 'P%';

/*5*/

SELECT M.CodMat , M.Descripcion FROM PROVISTO_POR PP 
JOIN MATERIAL M ON PP.CodMat = M.CodMat 
JOIN PROVEEDOR PROV ON PP.CodProv = PROV.CodProv
JOIN CIUDAD C ON PROV.CodCiudad = 
C.CodCiudad WHERE C.NOMBRE LIKE 'Ramos Mejia' ;

/*6*/

SELECT P.NOMBRE 
FROM PROVISTO_POR PP 
JOIN PROVEEDOR P ON PP.CodProv = P.CodProv
JOIN COMPUESTO_POR CP ON PP.CodMat = CP.CodMat 
JOIN CONTIENE C ON C.CodArt = CP.CodArt 
JOIN ALMACEN A ON C.Nro = A.Nro 
WHERE A.Responsable = 'Roberto';