create database proyecto_integrador;
use proyecto_integrador;

create table mentores(
 id int not null auto_increment,
 nombre varchar(100) not null,
 telefono varchar(15) not null,
 direccion varchar(100) not null,
 correo varchar(45) not null,
 ciudad varchar(45) not null,
 constraint pk_mentores primary key(id)
);

create table instructores(
 id int not null auto_increment,
 nombre varchar(100) not null,
 telefono varchar(15) not null,
 direccion varchar(100) not null,
 correo varchar(45) not null,
 ciudad varchar(45) not null,
 constraint pk_instructores primary key(id)
);

create table cohortes(
 id int not null auto_increment,
 ciudad varchar(100) not null,
 horario time not null,
 fecha_inicio date not null,
 fecha_fin date not null,
 tema varchar(45) not null,
 constraint pk_cohortes primary key(id)
);

create table beneficiarios(
 id int not null auto_increment,
 nombre varchar(100) not null,
 telefono varchar(15) not null,
 direccion varchar(100) not null,
 correo varchar(45) not null,
 fecha_nacimiento date not null,
 constraint pk_beneficiarios primary key(id)
);

ALTER TABLE `proyecto_integrador`.`beneficiarios` 
ADD COLUMN `cohorte_id` INT NOT NULL AFTER `fecha_nacimiento`,
ADD INDEX `cohorte_id_idx` (`cohorte_id` ASC) VISIBLE;
;
ALTER TABLE `proyecto_integrador`.`beneficiarios` 
ADD CONSTRAINT `beneficiarios_cohorte`
  FOREIGN KEY (`cohorte_id`)
  REFERENCES `proyecto_integrador`.`cohortes` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `proyecto_integrador`.`instructores` 
ADD COLUMN `cohorte_id` INT NOT NULL AFTER `ciudad`,
ADD INDEX `cohorte_id_idx` (`cohorte_id` ASC) VISIBLE;
;
ALTER TABLE `proyecto_integrador`.`instructores` 
ADD CONSTRAINT `instructores_cohorte`
  FOREIGN KEY (`cohorte_id`)
  REFERENCES `proyecto_integrador`.`cohortes` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  
  ALTER TABLE `proyecto_integrador`.`mentores` 
ADD COLUMN `cohorte_id` INT NOT NULL AFTER `ciudad`,
ADD INDEX `cohorte_id_idx` (`cohorte_id` ASC) VISIBLE;
;
ALTER TABLE `proyecto_integrador`.`mentores` 
ADD CONSTRAINT `mentores_cohorte`
  FOREIGN KEY (`cohorte_id`)
  REFERENCES `proyecto_integrador`.`cohortes` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


alter table instructores 
add constraint fk_instructor_cohorte foreign key(cohorte_id)
references proyecto_integrador.cohortes(id);


INSERT INTO `proyecto_integrador`.`cohortes` (`id`, `ciudad`, `horario`, `fecha_inicio`, `fecha_fin`, `tema`) VALUES (1, 'CDMX', '09:30', '2021-04-19', '2021-05-19', 'JavaFull Stack');
insert into proyecto_integrador.cohortes values(
 null, 'Guadalajara', current_time(), curdate(), curdate(), 'Java Full stack'
);

#Reverse Engineer Database
