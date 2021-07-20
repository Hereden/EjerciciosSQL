#crear una base de datos blog. 
#Dentro definir 3 tablas, usuarios, publicaciones, comentarios. 
#deben definir los campos de las tablas y las relaciones que consideren debe contener


create database blog;
use blog;

create table usuarios(
 id int not null auto_increment,
 nombre varchar(100) not null,
 apellido_1 varchar(100) not null,
 appelido_2 varchar(100) not null,
 correo varchar(50) not null,
 contra varchar(50) not null,
 genero int not null,
 constraint pk_usuarios primary key(id)
);
create table publicaciones(
 id int not null auto_increment,
 titulo varchar(100) not null,
 contenido varchar(200) not null,
 constraint pk_publicaciones primary key(id)
);
create table comentarios(
 id int not null auto_increment,
 comentario varchar(144) not null,
 voto int not null,
 constraint pk_comentarios primary key(id)
);

ALTER TABLE `blog`.`publicaciones` 
ADD COLUMN `usuario_id` INT NOT NULL AFTER `contenido`,
ADD INDEX `usuario_id_idx` (`usuario_id` ASC) VISIBLE;
;
ALTER TABLE `blog`.`publicaciones` 
ADD CONSTRAINT `publicacion_usuario`
  FOREIGN KEY (`usuario_id`)
  REFERENCES `blog`.`usuarios` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `blog`.`comentarios` 
ADD COLUMN `usuario_id` INT NOT NULL AFTER `voto`,
ADD INDEX `usuario_id_idx` (`usuario_id` ASC) VISIBLE;
;
ALTER TABLE `blog`.`comentarios` 
ADD CONSTRAINT `comentario_usuario`
  FOREIGN KEY (`usuario_id`)
  REFERENCES `blog`.`usuarios` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `blog`.`comentarios` 
ADD COLUMN `publicacion_id` INT NOT NULL AFTER `usuario_id`,
ADD INDEX `publicacion_id_idx` (`publicacion_id` ASC) VISIBLE;
;
ALTER TABLE `blog`.`comentarios` 
ADD CONSTRAINT `comentario_publicacion`
  FOREIGN KEY (`publicacion_id`)
  REFERENCES `blog`.`publicaciones` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;