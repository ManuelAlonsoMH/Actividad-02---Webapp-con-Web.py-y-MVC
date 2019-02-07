create database ria_iniciales;
use ria_iniciales;
create table clientes(
    id_clientes int(4) not null auto_increment primary key ,
    nombre varchar(20)not null,
    telefono varchar(30) not null,
    sexo varchar (30) not null,
    correo varchar(30) not null);

create table productos(
    id_producto int(4) not null auto_increment primary key,
    nombre varchar(20) not null,
    existencia varchar(10) not null,
    tipo varchar(20) not null,
    precio int(7) not null);

insert into clientes(nombre,telefono,sexo,correo)values
('Manuel','7757678921','hombre','many@many'),
('Lizbeth','7717020952','mujer','arg@arg'),
('Fernanda','7757698012','mujer','fer@fer');

insert into productos (nombre,existencia,tipo,precio)values
('Patetaxo','5','Botana','78'),
('Coca','90','Bebida','15'),
('holanda','4','helado','90');

show tables;

select * from clientes;
describe clientes;

select * from productos;
describe productos;

create user 'manuel'@'localhost' IDENTIFIED BY 'manuel.2019';
Grant ALL PRIVILEGES ON ria_iniciales.* TO'manuel'@'localhost';
FLUSH PRIVILEGES;
