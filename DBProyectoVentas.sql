/*BASE DE DATOS PROYECTO JAVA EE*/

/*
	Nombre de los Programadores: 
		Ajqui Zunum Jacobo Efraín            2020135
		Alburéz Rivera Alvaro Ramiro         2020013
		Alvarado Cabrera Josue Daniel	     2020134
		Balan Velazco Kikab Sergio Pablo     2020015
		Cárdenas Monroy	Rodrigo Gerardo	     2020166
		Chajón Monroy Wilmer Adolfo	         2020193
		Coyote Sincal Diego Issaac	         2017525
		Escobar Vasquez Samuel Isaac	     2020031
		Ichich Ichich Julián Orlando	     2020612
		Ixpatac Sipaque Sduard Alejandro     2020209
		Jimenez Morales Abner Nehemias	     2020182
    
    Código Técnico: 
		IN5AV
    
    Fecha de Creación:
		01/09/2021
	
    Modificaciones:
		02/09/2021
        
	Revisión:
		02/09/2021
*/


drop database if exists DBProyectoVentas;
create database DBProyectoVentas;

use DBProyectoVentas;


-- ----------- T A B L A S  -----------


-- Tabla CLIENTE
create table Cliente
(
	codigoCliente int not null auto_increment,
    DPICliente varchar(15) not null,
    nombresCliente varchar(200) not null,
    direccionCliente varchar(150) not null,
    estado varchar(1) not null,
    primary key PK_codigoCliente (codigoCliente)
);


-- Tabla EMPLEADO
create table Empleado
(
	codigoEmpleado int not null auto_increment,
    DPIEmpleado varchar(15) not null,
    nombresEmpleado varchar(200) not null,
    telefonoEmpleado varchar(8) not null,
    estado varchar(1) not null,
    usuario varchar(15) not null,
    primary key PK_codigoEmpleado (codigoEmpleado)
);


-- Tabla PRODUCTO
create table Producto
(
	codigoProducto int not null auto_increment,
    nombreProducto varchar(200) not null,
    precio double not null,
    stock int not null,
    estado varchar(1) not null,
    primary key PK_codigoProducto (codigoProducto)
);


-- Tabla VENTA
create table Venta
(
	codigoVenta int not null auto_increment,
    numeroSerie varchar(225) not null,
    fechaVenta date not null,
    monto double not null,
    estado varchar(1) not null,
    codigoCliente int not null,
    codigoEmpleado int not null,
    primary key PK_codigoVenta (codigoVenta),
    constraint FK_Venta_Cliente foreign key (codigoCliente)
		references Cliente (codigoCliente),
	constraint FK_Venta_Empleado foreign key (codigoEmpleado)
		references Empleado (codigoEmpleado)
);


-- Tabla DETALLEVENTA
create table DetalleVenta
(
	codigoDetalleVenta int not null auto_increment,
    codigoProducto int not null,
    cantidad int not null,
    precioVenta double not null,
    codigoVenta int not null,
    primary key PK_codigoDetalleVenta (codigoDetalleVenta),
    constraint FK_DetalleVenta_Producto foreign key (codigoProducto)
		references Producto (codigoProducto),
    constraint FK_DetalleVenta_Venta foreign key (codigoVenta)
		references Venta (codigoVenta)
);




-- ----------- I N G R E S O     D A T O S  -----------


-- Tabla CLIENTE

insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	values ('1579420230101','Pedro Armas','Mixco','1'); 
insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	values ('5412364417101','Luis Olmedo','Guatemala','1');
insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	values ('2541232144101','Ana Colindres','Sacatepéquez','1');
insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	values ('3024102514101','Sandra Gómez','Escuintla','1');
insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado)
	values ('4741295413101','Julio Sandoval','Villa Nueva','1');
    

-- Tabla EMPLEADO

insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values ('14741259474101','Mariano López','45369874','1','mlopez');
insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values ('52324187412101','Julieta Casasola','36785210','1','jcasasola');
insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values ('65412354117101','Anderson Vanegas','56083437','1','avanegas');
insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values ('74251247444101','Hector Herrera','38512021','1','hherrera');
insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario)
	values ('56742125414101','Esmeralda Torres','45024185','1','etorres');    


-- Tabla PRODUCTO

insert into Producto (nombreProducto, precio, stock, estado)
	values ('Nike Air Max 95',1800.80,5,'1');
insert into Producto (nombreProducto, precio, stock, estado)
	values ('Nike Air Max 97',2500.25,10,'1');
insert into Producto (nombreProducto, precio, stock, estado)
	values ('Adidas Ozweego',1000.50,7,'1');    
insert into Producto (nombreProducto, precio, stock, estado)
	values ('Jordan 1',3525.70,8,'1');
insert into Producto (nombreProducto, precio, stock, estado)
	values ('Yeezy 700',5400.80,2,'1');