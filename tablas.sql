show databases;
create database tlacuatech;
use tlacuatech;

show tables;

create table usuarios(
 usuario_id int primary key,
 nombre varchar(255) not null,
 alias varchar(255) not null,
 correo varchar(255) not null,
 contra varchar(255) not null,
 genero int(3) not null,
 telefono int(10) not null,
 direccion varchar(255),
 codigo_postal int(6)
);

create table articulos(
 articulo_id int primary key,
 nombre varchar(255) not null,
 descripcion varchar(255) not null,
 talla varchar(50) not null,
 colores varchar(255) not null,
 precio int not null
);

