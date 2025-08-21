
create database agenda;
use agenda;
show databases;
show tables;
drop table if exists agenda;
create table agenda;
show tables;
create table agenda
(
   codigo int primary key auto_increment,
       nombre varchar(20) not null,
       direccion varchar(30),
       telefono varchar(11),
       comentarios varchar(150)
);

describe agenda;
select * from agenda;
insert into agenda(nombre,direccion,telefono)values
('Messi','Lima','12345');
insert into agenda(nombre,direccion,telefono)values
('Andres','chacabuco','232425');
insert into agenda(nombre,direccion,telefono)values
('Fernando','monserat','112541');
insert into agenda(nombre,direccion,telefono)values
('Alejandro','paseo colon','256790');
insert into agenda(nombre,direccion,telefono)values
('Jose','santa fe','458932');
insert into agenda(nombre,direccion,telefono)values
('Edgar','puerto madero','437851');
insert into agenda(nombre,direccion,telefono)values
('Alfredo','pichincha','347841');
insert into agenda(nombre,direccion,telefono)values
('Cesar','maipu','197369');
insert into agenda(nombre,direccion,telefono)values
('Jairo','belgrano','589274');
insert into agenda(nombre,direccion,telefono)values



