create database blog1;
use blog1;

create table categorias(
 id int not null auto_increment,
 nombre varchar(100) not null,
 constraint pk_categorias primary key(id)
);

create table usuarios(
 id int not null auto_increment,
 nombre varchar(100) not null,
 apellidos varchar(100) not null,
 email varchar(100) not null unique,
 password varchar(100) not null,
 fecha date not null,
 constraint pk_usuarios primary key(id)
);

create table entradas(
 id int not null auto_increment,
 usuario_id int not null,
 categoria_id int not null,
 titulo varchar(200) not null,
 description text,
 fecha date not null,
 constraint pk_entradas primary key(id),
 CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
 CONSTRAINT fk_entrada_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id)
);
