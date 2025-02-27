CREATE SCHEMA tienda_zapatillas;
USE tienda_zapatillas;

CREATE TABLE Zapatillas(
	id_zapatilla INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL
    );

CREATE TABLE cliente(
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    numero_telefono INT NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
	ciudad VARCHAR(45) NOT NULL,
    provincia VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    codigo_postal INT NOT NULL
    );

CREATE TABLE empleados(
	id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    tienda VARCHAR(45) NOT NULL,
    salario INT,
    fecha_incorporacion DATE NOT NULL
    );

CREATE TABLE facturas(
	id_factura INT AUTO_INCREMENT,
    numero_factura VARCHAR(45) NOT NULL,
    fecha DATE NOT NULL,
    zapatilla_id INT NOT NULL,
	empleado_id INT NOT NULL,
	cliente_id INT NOT NULL,
	PRIMARY KEY (id_factura, zapatilla_id, empleado_id, cliente_id),
    CONSTRAINT fk_facturas_zapatillas 
		FOREIGN KEY (zapatilla_id)
        REFERENCES Zapatillas(id_zapatilla),
	CONSTRAINT fk_facturas_empleados 
		FOREIGN KEY (empleado_id) 
        REFERENCES empleados (id_empleado),
    CONSTRAINT fk_facturas_cliente 
		FOREIGN KEY (cliente_id) 
        REFERENCES cliente (id_cliente)
    );
    
    