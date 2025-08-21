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
   codigo int primary key auto_increment,
   letra char(1) not null,
   numero varchar(20),
   fecha date not null,
   monto double not null
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
select * from clientes;
-- 8- Mostrar las tablas que tiene la base de datos negocio.

-- 9- Describir (detalle de campos - METADATO) cada una de las tablas de la base de datos.
