-- Laboratorio 2
-- 1- Borrar si existe la base de datos Negocio.
drop database if exists negocio;


-- 2- Crear la base de datos Negocio.
create database negocio;
-- 3- Ingresar a la base de datos creada.
use negocio;
-- 4- Crear la tabla Clientes dentro de la base de datos con el siguiente detalle:
create table clientes
( 
    codigo int primary key auto_increment,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    cuit char(13),
    direccion varchar(50),
    comentarios varchar(140)
 );
    
-- codigo		int auto_increment y PK
-- nombre		varchar(20) not null
-- apellido		varchar(20) not null
-- cuit			char(13)
-- direccion	varchar(50)
-- comentarios 	varchar(140)
-- PK significa Primary Key


-- 5- Crear la tabla Facturas dentro de la base de datos con el siguiente detalle:
create table facturas
(
   
   letra char(1) not null,
   numero int,
   fecha date,
   monto double,
   primary key(letra,numero)
);
 describe facturas;
 
-- Letra		char y PK
-- Numero		integer y PK
-- Fecha		date
-- Monto		double

-- observar que se esta declarando una clave primaria compuesta
-- es decir primary key(letra,codigo)
-- cada campo por si solo no es clave, ni tampoco identifica al registro
-- pero la suma de los dos forman la clave

-- 6- Crear la tabla Articulos dentro de la base de datos con el siguiente detalle:
create table articulos
(
  codigo int primary key auto_increment,
  nombre varchar(50) not null,
  precio double not null,
  stock int not null
  
);
-- Codigo		integer auto_increment y PK 
-- Nombre 		varchar(50)
-- Precio		double
-- Stock		integer

-- 7- Cargar 5 registros aleatorios en cada tabla.
INSERT INTO clientes (nombre, apellido, cuit, direccion, comentarios) VALUES
	('Lucas', 'Gómez', '20-12345678-9', 'Av. Siempre Viva 742', 'Cliente frecuente, prefiere efectivo.'),
	('María', 'Fernández', '27-87654321-0', 'Calle Falsa 123', 'Llamar antes de entregar.'),
	('Juan', 'Pérez', '23-34567890-1', 'Boulevard Central 999', 'Solicita factura A.'),
	('Sofía', 'Martínez', '24-56789012-3', 'Ruta 8 Km 45', 'Cliente nuevo, buen pagador.'),
	('Diego', 'López', '30-78901234-5', 'Diagonal Norte 456', 'Entregar solo en horario laboral.');
    
    INSERT INTO facturas (letra, numero, fecha, monto) VALUES
	('A', 1001, '2025-08-01', 15342.50),
	('B', 1002, '2025-08-05', 20450.00),
	('C', 1003, '2025-08-10', 8760.75),
	('A', 1004, '2025-08-15', 4520.00),
	('B', 1005, '2025-08-20', 12300.90);
    
    INSERT INTO articulos (nombre, precio, stock) VALUES
	('Auriculares Bluetooth', 4500.50, 25),
	('Mouse Gamer RGB', 3200.00, 40),
	('Teclado Mecánico', 7500.99, 15),
	('Monitor 24 pulgadas', 32000.00, 10),
	('Cámara Web HD', 9800.75, 12);
    
    
-- 8- Mostrar las tablas que tiene la base de datos negocio.
      show tables;
-- 9- Describir (detalle de campos - METADATO) cada una de las tablas de la base de datos.
       describe clientes;
       describe facturas;
       describe articulos;
       
-- 10 listar los registros de cada tabla
   select * from clientes;
   select * from facturas;
   select * from articulos;
   
  -- comando nuevo dhml select

   -- comodin *
   select * from clientes;
   select nombre, apellido, direccion from clientes;
   select apellido, nombre, apellido from clientes;
   select concat(apellido,'', nombre)nombre from clientes;
   
   -- columnas calculadas 
   select letra, numero, fecha, monto,
   round(monto*1.21,2)monto_con_iva
   from facturas;
   
   -- filtrado con where
   select * from clientes where nombre='lucas';
    select * from clientes where nombre='maría';
   -- operador distinto != <>
    select * from clientes where nombre!='lucas';
    select * from clientes where nombre<>'maría';
    
   -- operadores logicos and or
   select * from clientes where nombre='maría' or nombre='lucas';
   select * from clientes where codigo<=5 and codigo>=3;
   
   -- valores null(vacios)
   insert into clientes (nombre, apellido, direccion) values
           ("Andrea","Moretu",""),
           ("cristian","molina",null);
   select * from clientes where direccion is null;
   select*from clientes where direccion = null; -- error
   
   -- clausula in - not in 
   select * from clientes where codigo=3 or codigo=13;
   select * from clientes where codigo in(3,5,13);
   select * from clientes where codigo not in(3,5,13);
   
   -- clausula between - not between
   select * from clientes where codigo >=2 and codigo <=4;
   select * from clientes where codigo between 2 and 4;
   select * from clientes where codigo not between 2 and 4;
   
   insert into clientes (nombre, apellido) values
          ('Mariano','Perez'),
	      ('Maria','Perez'),
		  ('Monica','Perez'),
	      ('Melina','Perez'),
		  ('Omar','Perez'),
	      ('Magali','Perez');
   -- clausula like
   select * from clientes where nombre like "m%";
   select * from clientes where nombre like "ma%";
   select * from clientes where nombre like "mar%";
   select * from clientes where nombre like "%a";
   select * from clientes where nombre like "%ar%";
   select * from clientes where nombre like "m_r%";
   
   -- order by 
   select * from clientes order by apellido;
   select * from clientes order by apellido desc;
   select * from clientes order by apellido, nombre;
   




   -- Laboratorio 2

-- 1 - Ingrese a la base de datos negocio.
       use negocio;
-- 2 - Ingrese 5 registros aleatorios en cada tabla.
       select * from articulos;
-- 3 - Basándose en la tabla artículos obtener los siguientes listados.
-- a-	artículos con precio mayor a 100
-- b-	artículos con precio entre 20 y 40 (usar < y >)
-- c-	artículos con precio entre 40 y 60 (usar BETWEEN)
-- d-	artículos con precio = 20 y stock mayor a 30
-- e-	artículos con precio (12,20,30) no usar IN
-- f-	artículos con precio (12,20,30) usar el IN
-- g-	artículos que su precio no sea (12,20,30)
-- h-   artículos que su precio mas iva(21 %) sea mayor a 100
-- i-   listar nombre y descripción de los artículos que no cuesten $100
-- j- 	artículos con nombre que contengan la cadena 'lampara' (usar like)
-- k-   artículos que su precio sea menor que 200 y en su nombre no contenga la letra 'a'

-- 	2- Listar los artículos ordenados por precio de mayor a menor, y si hubiera precio iguales deben quedar ordenados por nombre.
-- 	3- Listar todos los artículos incluyendo una columna denominada precio con IVA, la cual deberá tener el monto con el iva del producto.
-- 	4- Listar todos los artículos incluyendo una columna denominada 'cantidad de cuotas' y otra 'valor de cuota', la cantidad es fija y es 3, 
--     el valor de cuota corresponde a 1/3 del monto con un 5% de interés.
   
   