-- Crear la base de datos
CREATE SCHEMA `tienda_zapatillas`;

-- Seleccionar la base de datos para usarla
USE `tienda_zapatillas`;

-- Tabla Zapatillas
CREATE TABLE Zapatillas (
    id_zapatilla INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL
);

-- Tabla Clientes
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    numero_telefono INT NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    ciudad VARCHAR(45),
    provincia VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    codigo_postal VARCHAR(45) NOT NULL
);

-- Tabla Empleados
CREATE TABLE Empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    tienda VARCHAR(45) NOT NULL,
    salario INT,
    fecha_incorporacion DATE NOT NULL
);

-- Tabla Facturas
CREATE TABLE Facturas (
    id_factura INT AUTO_INCREMENT PRIMARY KEY,
    numero_factura VARCHAR(45) NOT NULL,
    fecha DATE NOT NULL,
    id_zapatilla INT NOT NULL,
    id_empleado INT NOT NULL,
    id_cliente INT NOT NULL,
    -- Definir las claves foráneas
    CONSTRAINT fk_facturas_zapatillas FOREIGN KEY (id_zapatilla) REFERENCES Zapatillas(id_zapatilla),
    CONSTRAINT fk_facturas_empleados FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado),
    CONSTRAINT fk_facturas_clientes FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
-- Añadir columnas nuevas
ALTER TABLE Zapatillas
ADD COLUMN marca VARCHAR(45) NOT NULL,
ADD COLUMN talla INT NOT NULL;

SELECT * 
	FROM Zapatillas

ALTER TABLE Empleados
MODIFY COLUMN salario FLOAT;

ALTER TABLE Clientes
DROP COLUMN pais;

ALTER TABLE Facturas
ADD COLUMN total FLOAT;

INSERT INTO Zapatillas (modelo, color,marca,talla)
VALUES("XQYUN", "Negro", "Nike", 42),
("UOPMN", "Rosas", "Nike", 39),
("OPNYT", "Verdes", "Adidas", 35);

SELECT * 
	FROM Zapatillas
    
 INSERT INTO empleados (nombre, tienda, salario, fecha_incorporacion)
 VALUES("Laura","Alcobendas",25987,"2010-09-03"),
 ("Maria", "Sevilla", NULL,"2001-04-11"),
 ("Ester","Oviedo",30165.98,"2000-11-29");
 
 INSERT INTO clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
 VALUES ("Monica", 123456789, "monica@email.com", "Calle Felicidad", "Móstoles", "Madrid", "28176"),
 ("Lorena",289345678, "lorena@email.com","Calle Alegria", "Barcelona", "Barcelona","12346"),
 ("Carmen", 28938432,"carmen@email.com", "Calle del Color", "Vigo", "Pontevedra", "23456");

SELECT * 
	FROM clientes

INSERT INTO facturas (numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
VALUES (123,"2001-12-11",1,2,1,54.98),
(1234,"2005-05-23",1,1,3,89.91),
(12345,"2015-09-18",2,3,3,76.23);

UPDATE zapatillas
SET color = "Amarillas"
WHERE id_zapatilla =2;

SELECT * 
	FROM Zapatillas
    
UPDATE empleados
SET tienda = "A Coruña"
WHERE id_empleado = 1;

SELECT * 
	FROM empleados
    
UPDATE clientes
SET numero_telefono = "25698745"
WHERE id_cliente = 1;

UPDATE facturas
SET total = 89.91
WHERE id_Zapatilla = 2;