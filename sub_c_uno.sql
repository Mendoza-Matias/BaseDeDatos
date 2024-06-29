CREATE DATABASE sub_uno;
USE sub_uno;

CREATE TABLE MARCA(
	Id INT AUTO_INCREMENT ,
    Descripcion VARCHAR(50) NOT NULL,
    PRIMARY KEY(Id)
);
CREATE TABLE LOCALIDAD(
	IdLocalidad INT AUTO_INCREMENT,
    Descripcion VARCHAR(50) NOT NULL,
    PRIMARY KEY(IdLocalidad)
);
CREATE TABLE VEHICULO(
	Patente VARCHAR(10) NOT NULL,
    Color VARCHAR(10) NOT NULL,
    Anio YEAR NOT NULL,
    Capacidad INT NOT NULL,
    Puertas INT NOT NULL,
    IdMarca INT,
    PRIMARY KEY(Patente),
    FOREIGN KEY(IdMarca) REFERENCES MARCA(Id)
);
CREATE TABLE CLIENTE(
	Legajo INT NOT NULL,
    Nombre VARCHAR(25) NOT NULL,
    Apellido VARCHAR(25) NOT NULL,
    Telefono INT NOT NULL,
    IdLocalidad INT NOT NULL,
    PRIMARY KEY(Legajo),
    FOREIGN KEY(IdLocalidad) REFERENCES LOCALIDAD(IdLocalidad)
);
CREATE TABLE ALQUILER(
	ID INT AUTO_INCREMENT,
    Patente VARCHAR(10) NOT NULL,
    LegCliente INT NOT NULL,
    FechaAlquiler DATE NOT NULL,
    Importe FLOAT NOT NULL,
    CantDias INT NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(Patente)REFERENCES VEHICULO(Patente),
    FOREIGN KEY(LegCliente)REFERENCES CLIENTE(Legajo)
);

-- Inserts para la tabla MARCA
INSERT INTO MARCA (Descripcion) VALUES ('Toyota');
INSERT INTO MARCA (Descripcion) VALUES ('Ford');
INSERT INTO MARCA (Descripcion) VALUES ('Chevrolet');
INSERT INTO MARCA (Descripcion) VALUES ('Honda');
INSERT INTO MARCA (Descripcion) VALUES ('Hyundai');
INSERT INTO MARCA (Descripcion) VALUES ('Nissan');
INSERT INTO MARCA (Descripcion) VALUES ('Volkswagen');
INSERT INTO MARCA (Descripcion) VALUES ('BMW');
INSERT INTO MARCA (Descripcion) VALUES ('Mercedes-Benz');
INSERT INTO MARCA (Descripcion) VALUES ('Audi');

-- Inserts para la tabla LOCALIDAD
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Buenos Aires');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Córdoba');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Rosario');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Mendoza');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('La Plata');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Mar del Plata');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('San Miguel de Tucumán');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Salta');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('Santa Fe');
INSERT INTO LOCALIDAD (Descripcion) VALUES ('San Juan');

-- Inserts para la tabla VEHICULO
INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('ABC123', 'Rojo', 2020, 5, 5, 1);
INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('GKX385', 'Gris', 2007, 5, 4, 1);
INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('DEF456', 'Azul', 2019, 5, 4, 2);
INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('GHI789', 'Negro', 2018, 7, 4, 3);
INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('JKL012', 'Blanco', 2021, 5, 2, 4);
INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('MNO345', 'Gris', 2022, 5, 4, 5);
INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('PQR678', 'Verde', 2023, 5, 4, 6);
INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('STU901', 'Amarillo', 2020, 5, 4, 7);
INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('VWX234', 'Azul', 2019, 7, 4, 8);
INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('YZA567', 'Rojo', 2021, 5, 2, 9);
INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('BCD890', 'Blanco', 2022, 5, 4, 10);

-- Inserts para la tabla CLIENTE
INSERT INTO CLIENTE (Legajo, Nombre, Apellido, Telefono, IdLocalidad) VALUES (1, 'Juan', 'Perez', 123456789, 1);
INSERT INTO CLIENTE (Legajo, Nombre, Apellido, Telefono, IdLocalidad) VALUES (2, 'Sofia', 'Gomez', 987654321, 2);
INSERT INTO CLIENTE (Legajo, Nombre, Apellido, Telefono, IdLocalidad) VALUES (3, 'Martin', 'Lopez', 234567890, 3);
INSERT INTO CLIENTE (Legajo, Nombre, Apellido, Telefono, IdLocalidad) VALUES (4, 'Lucia', 'Martinez', 876543210, 4);
INSERT INTO CLIENTE (Legajo, Nombre, Apellido, Telefono, IdLocalidad) VALUES (5, 'Diego', 'Sanchez', 345678901, 5);
INSERT INTO CLIENTE (Legajo, Nombre, Apellido, Telefono, IdLocalidad) VALUES (6, 'Paula', 'Ramirez', 765432109, 6);
INSERT INTO CLIENTE (Legajo, Nombre, Apellido, Telefono, IdLocalidad) VALUES (7, 'Fernando', 'Torres', 456789012, 7);
INSERT INTO CLIENTE (Legajo, Nombre, Apellido, Telefono, IdLocalidad) VALUES (8, 'Valentina', 'Diaz', 654321098, 8);
INSERT INTO CLIENTE (Legajo, Nombre, Apellido, Telefono, IdLocalidad) VALUES (9, 'Santiago', 'Alvarez', 567890123, 9);
INSERT INTO CLIENTE (Legajo, Nombre, Apellido, Telefono, IdLocalidad) VALUES (10, 'Agustina', 'Gutierrez', 543210987, 10);

-- Inserts para la tabla ALQUILER
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('ABC123', 1, '2020-01-10', 1500.50, 3);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('ABC123', 1, '2020-01-10', 1500.50, 3);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('ABC123', 1, '2024-01-10', 1500.50, 3);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('ABC123', 2, '2022-02-05', 2500.50, 3);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('ABC123', 5, '2021-01-06', 3500.50, 3);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('DEF456', 2, '2024-02-15', 2000.00, 5);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('GHI789', 3, '2024-03-20', 2500.75, 2);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('JKL012', 4, '2024-04-25', 3000.25, 4);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('MNO345', 5, '2024-05-30', 3500.50, 6);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('PQR678', 6, '2024-06-05', 4000.00, 1);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('STU901', 7, '2024-07-10', 4500.75, 7);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('VWX234', 8, '2024-08-15', 5000.25, 5);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('YZA567', 9, '2024-09-20', 5500.50, 3);
INSERT INTO ALQUILER (Patente, LegCliente, FechaAlquiler, Importe, CantDias) VALUES ('BCD890', 10, '2024-10-25', 6000.00, 4);


# -- 2
SELECT * FROM 
	VEHICULO V 
JOIN 
	MARCA M ON V.IdMarca = M.Id ORDER BY M.Descripcion , V.Patente;

# -- 3

SELECT * FROM MARCA;
SELECT * FROM VEHICULO;
SELECT M.Descripcion ,
COUNT(M.Descripcion) AS Cantidad_de_vehiculos ,
MAX(V.capacidad) AS Capacidad_maxima 
FROM 
	VEHICULO V 
JOIN 
	MARCA M ON V.IdMarca = M.Id GROUP BY M.Descripcion , V.Capacidad >= 5;

# -- 4

SELECT C.Legajo , C.Nombre , 
C.apellido , V.patente , 
V.color , 
ALQ.FechaAlquiler , 
ROUND(ALQ.Importe * 0.15) AS Impuesto_alquiler
FROM 
	ALQUILER ALQ JOIN CLIENTE C
ON 
	ALQ.LegCliente = C.Legajo 
JOIN 
	VEHICULO V ON ALQ.Patente = V.Patente 
WHERE YEAR(ALQ.FechaAlquiler) >= '2020' AND MONTH(ALQ.FechaAlquiler) = 2;

# -- 5

INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('ABC232', 'Rojo', 2021, 5, 4, 5);
INSERT INTO VEHICULO (Patente, Color, Anio, Capacidad, Puertas, IdMarca) VALUES ('FFF55', 'Rojo', 2015, 4, 2, 1);

# -- 6
UPDATE VEHICULO SET Color="Gris" WHERE Patente = 'FFF55';
SELECT * FROM VEHICULO WHERE Patente = 'FFF55';

# -- 7
/*Cuando la capidad es la maximo*/
SELECT Patente , capacidad FROM VEHICULO WHERE Capacidad = 
(SELECT MAX(Capacidad) FROM VEHICULO);

# -- 8

SELECT * FROM CLIENTE C #LISTAR TODOS LOS DATOS DEL CLIENTE
WHERE 
    EXISTS ( # --- SUBCONSULTA || SI EXISTE ALGUNO CON MARCA NISSAN
        SELECT 1 # -- 
        FROM ALQUILER ALQ
        JOIN VEHICULO V ON ALQ.Patente = V.Patente
        JOIN MARCA M ON V.IdMarca = M.Id
        WHERE ALQ.LegCliente = C.Legajo AND M.Descripcion = 'Nissan'
    )
    AND NOT EXISTS (
        SELECT 1 
        FROM ALQUILER ALQ
        JOIN VEHICULO V ON ALQ.Patente = V.Patente
        JOIN MARCA M ON V.IdMarca = M.Id
        WHERE ALQ.LegCliente = C.Legajo AND M.Descripcion = 'Ford'
	);

# -- 9

SELECT ALQ.Patente , SUM(ALQ.Importe) AS Importe_total , COUNT(*) AS Numero_Alquileres 
FROM ALQUILER ALQ GROUP BY ALQ.Patente HAVING COUNT(*) > 1;

# -- 9

SELECT 
    C.*
FROM 
    CLIENTE C
JOIN (
    SELECT 
        LegCliente
    FROM 
        ALQUILER
    WHERE 
        YEAR(FechaAlquiler) = 2020
        AND MONTH(FechaAlquiler) IN (1, 2, 3)
    GROUP BY 
        LegCliente
    HAVING 
        COUNT(*) > 1
) AS AlquileresMasDeUnaVez ON C.Legajo = AlquileresMasDeUnaVez.LegCliente;

