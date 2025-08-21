-- ------------------------
-- Definiciones importantes
-- ------------------------


-- Significado de SQL
-- Structured Query Language

-- ANSI SQL
-- En la actualidad el SQL es el estándar de facto de la inmensa mayoría de los SGBD comerciales.
-- Y, aunque la diversidad de añadidos particulares que incluyen las distintas implementaciones
-- comerciales del lenguaje es
-- ------------------------
-- Definiciones importantes
-- ------------------------


-- Significado de SQL
-- Structured Query Language

-- ANSI SQL
-- En la actualidad el SQL es el estándar de facto de la inmensa mayoría de los SGBD comerciales.
-- Y, aunque la diversidad de añadidos particulares que incluyen las distintas implementaciones
-- comerciales del lenguaje es amplia, el soporte al estándar SQL-92 es general y muy amplio.


-- DDL (DATA DEFINITION LANGUAGE)
-- Create table
-- Alter table
-- Drop table

-- DML (DATA MANIPULATION LANGUAGE)
-- Select
-- Insert
-- Update
-- Delete

-- DCL (DATA CONTROL LANGUAGE)
-- Programación (No incluida en este curso)
 -- amplia, el soporte al estándar SQL-92 es general y muy amplio.


-- DDL (DATA DEFINITION LANGUAGE)
-- Create table
-- Alter table
-- Drop table

-- DML (DATA MANIPULATION LANGUAGE)
-- Select
-- Insert
-- Update
-- Delete

-- DCL (DATA CONTROL LANGUAGE)
-- Programación (No incluida en este curso)
-- -----------------------------------
-- Tipos de datos más comunes en MySQL
-- -----------------------------------


-- Tipo de datos Texto de datos más comunes

-- Tipo		Bytes de almacenamiento
-- _______________________________________
-- char(x)		x
-- varchar(x)	x+1

/*
		nombre char(20),
        
        |ANA                 |				20 bytes
		|CARLOS              |				20 bytes
        |MAXIMILIANO         |				20 bytes
        |MARIA TERESA        |				20 bytes
									Total	80 bytes
                                    
		nombre varchar(20)
        |ANA                 |				  3 + 1 = 4  bytes
		|CARLOS              |				  6 + 1 = 7	 bytes
        |MAXIMILIANO         |				 11 + 1 =12  bytes
        |MARIA TERESA        |				 12 + 1 =13  bytes
									Total	36 bytes
*/


-- Tipo de datos Numérico

-- Tipo		Bytes de almacenamiento
-- _______________________________________
-- bool (boolean)	1	(0 es false distinto de 0 es true)
-- tinyint			1	2^8			256
-- smallint			2	2^16		65536
-- mediumint		3	2^24		16777216
-- int (integer)	4	2^32		4294967296
-- bigint			8	2^64		18446744073709551616
-- float			4	 		
-- double			8
-- decimal(t,d)		t+2 

/*
		codigo tinyint			(signed)
        
        |--------|--------|
	  -128		 0       127
        
        codigo tinyint unsigned

		|-----------------|
		0				 255
        
        valor float,
        10/3
        3.333333
        --------
        
        100/3
        33.33333
        --------
        
        valor double
        10/3
        3.33333333333333
        ----------------
        
        100/3
        33.3333333333333
        ----------------
        
        
		precio decimal(8,2)
        999999,99
        ------,--
        
        precio decimal(6,3)
        999,999
        ---,---

*/



-- Tipo de datos Fecha y Hora

-- Tipo		Bytes de almacenamiento
-- _______________________________________
-- date		3	Año Mes Dia ‘2012-10-25’	    '2025/08/19'
-- datetime	8
-- time		3
-- year		1

    select 'hola mundo';
    select 2+2;
    -- uso de alias
    select 2+2 'valor';
    select 2+2 valor_resultado;
    select PI() pi;
    select round(PI(),2) pi;
    select curdate() fecha;
    select curtime() hora;
    select sysdate() fecha_hora;
    
    

  