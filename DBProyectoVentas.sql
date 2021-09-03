Drop database if exists DBProyectoVentas;
Create database DBProyectoVentas;

Use DBProyectoVentas;

CREATE TABLE Cliente(
	codigoCliente INT NOT NULL AUTO_INCREMENT,
    DPICliente VARCHAR(15) NOT NULL,
    nombresCliente VARCHAR(200) NOT NULL,
    direccionCliente VARCHAR(150) NOT NULL,
    estado VARCHAR(1) NOT NULL,
    PRIMARY KEY PK_codigoCliente (codigoCliente)
);

CREATE TABLE Empleado(
	codigoEmpleado INT NOT NULL AUTO_INCREMENT,
    DPIEmpleado VARCHAR(15) NOT NULL,
    nombresEmpleado VARCHAR(200) NOT NULL,
    telefonoEmpleado VARCHAR(8) NOT NULL,
    estado VARCHAR(1) NOT NULL,
    usuario VARCHAR(15) NOT NULL,
	PRIMARY KEY PK_codigoEmpleado (codigoEmpleado)
);

CREATE TABLE Producto(
	codigoProducto INT NOT NULL AUTO_INCREMENT,
    nombreProducto VARCHAR(200) NOT NULL,
    precio DOUBLE NOT NULL,
    stock INT NOT NULL,
    estado VARCHAR(1) NOT NULL,
    PRIMARY KEY PK_codigoProducto (codigoProducto)
);

CREATE TABLE Ventas(
	codigoVenta INT NOT NULL AUTO_INCREMENT,
    numeroSerie VARCHAR(255) NOT NULL,
    fechaVenta DATE NOT NULL,
    monto DOUBLE NOT NULL,
    estado VARCHAR(1) NOT NULL,
    codigoCliente INT NOT NULL,
    codigoEmpleado INT NOT NULL,
    
    PRIMARY KEY PK_codigoVenta (codigoVenta),
    
    CONSTRAINT FK_Venta_Cliente 
		FOREIGN KEY (codigoCliente) REFERENCES Cliente(codigoCliente),
    CONSTRAINT FK_Venta_Empleado 
		FOREIGN KEY (codigoEmpleado) REFERENCES Empleado(codigoEmpleado)
);

CREATE TABLE DetalleVenta(
	codigoDetalleVenta INT NOT NULL AUTO_INCREMENT,
    codigoProducto INT NOT NULL,
    cantidad INT NOT NULL,
    precioVenta DOUBLE NOT NULL,
    codigoVenta INT NOT NULL,
    
    PRIMARY KEY PK_codigoDetalleVenta (codigoDetalleVenta),
    
    CONSTRAINT FK_DetalleVenta_Producto 
		FOREIGN KEY (codigoProducto) REFERENCES Producto(codigoProducto),
    CONSTRAINT FK_DetalleVenta_Ventas 
		FOREIGN KEY (codigoVenta) REFERENCES Ventas(codigoVenta)
);


INSERT INTO Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	VALUES ('2375 89060 1234', 'Clemente Salvatierra', 'Guatemala', '1');
INSERT INTO Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	VALUES ('5652 28543 2829', 'Rodrigo Salvatierra', 'Villa Nueva', '1');
INSERT INTO Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	VALUES ('8906 22758 2378', 'Valery Funez', 'Mixco', '1');
INSERT INTO Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	VALUES ('3456 54543 6359', 'Sofia Guerra', 'Villa Nueva', '1');
INSERT INTO Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	VALUES ('3456 67875 3487', 'Daniel Morales', 'Guatemala', '1');

INSERT INTO Empleado(DPIEmpleado, nombresEmpleado, telefonoEMpleado, estado, usuario)
	VALUES('3456 54678 5434', 'Harold Hernández', '34566754' ,'1' ,'hhernandez');
INSERT INTO Empleado(DPIEmpleado, nombresEmpleado, telefonoEMpleado, estado, usuario)
	VALUES('5434 43875 6798', 'Elias Morales', '21675498' ,'1' ,'emorales');
INSERT INTO Empleado(DPIEmpleado, nombresEmpleado, telefonoEMpleado, estado, usuario)
	VALUES('4234 54567 4564', 'Abigail Mejia', '32546787' ,'1' ,'amejia');
INSERT INTO Empleado(DPIEmpleado, nombresEmpleado, telefonoEMpleado, estado, usuario)
	VALUES('5687 34546 3245', 'Sara Guzmán', '34568743' ,'1' ,'sguzman');
INSERT INTO Empleado(DPIEmpleado, nombresEmpleado, telefonoEMpleado, estado, usuario)
	VALUES('3234 34587 5678', 'Claudia Ruiz', '34546787' ,'1' ,'cruiz');

INSERT INTO Producto(nombreProducto, precio, stock, estado)
	VALUES('Teclado Brocs', 450.00, 15, '1');
INSERT INTO Producto(nombreProducto, precio, stock, estado)
	VALUES('Laptop HP Pavilon', 40000.00, 7, '1');
INSERT INTO Producto(nombreProducto, precio, stock, estado)
	VALUES('Mouse Ryzen', 350.00, 24, '1');
INSERT INTO Producto(nombreProducto, precio, stock, estado)
	VALUES('Monitor Acer', 1500.00, 3, '1');
INSERT INTO Producto(nombreProducto, precio, stock, estado)
	VALUES('Bocinas Ryzen', 950.00, 13, '1');

INSERT INTO Ventas(numeroSerie, fechaVenta, monto, estado, codigoCliente, codigoEmpleado)
	VALUES('202001','2021/01/20', 450.00, '1', 1,1);
INSERT INTO Ventas(numeroSerie, fechaVenta, monto, estado, codigoCliente, codigoEmpleado)
	VALUES('202002', '2021/02/20', 4000.00, '1', 2, 2);
INSERT INTO Ventas(numeroSerie, fechaVenta, monto, estado, codigoCliente, codigoEmpleado)
	VALUES('202003', '2021/03/20', 1500.00, '1', 3, 3);
INSERT INTO Ventas(numeroSerie, fechaVenta, monto, estado, codigoCliente, codigoEmpleado)
	VALUES('202004', '2021/04/20', 950.00, '1', 4, 4);
INSERT INTO Ventas(numeroSerie, fechaVenta, monto, estado, codigoCliente, codigoEmpleado)
	VALUES('202005', '2021/05/20', 1300.00, '1', 5, 5);

INSERT INTO DetalleVenta(codigoProducto, cantidad, precioVenta, codigoVenta)
	VALUES(1, 3, 4000.00, 1);
INSERT INTO DetalleVenta(codigoProducto, cantidad, precioVenta, codigoVenta)
	VALUES(2, 5, 450.00, 2);
INSERT INTO DetalleVenta(codigoProducto, cantidad, precioVenta, codigoVenta)
	VALUES(3, 8, 1500, 3);
INSERT INTO DetalleVenta(codigoProducto, cantidad, precioVenta, codigoVenta)
	VALUES(4, 7, 5500.00, 4);
INSERT INTO DetalleVenta(codigoProducto, cantidad, precioVenta, codigoVenta)
	VALUES(5, 10, 1850.00, 5);



