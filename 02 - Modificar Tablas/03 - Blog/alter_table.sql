/*renombrar tabla*/
alter table usuarios rename to usuarios_renom;

/*Renombrar columna*/
alter table usuarios_renom change apellidos apellido varchar(100) null;

/*Modificar la columna sin cambiar el nombre*/
alter table usuarios_renom modify apellido char(50) not null;

/*Añadir una nueva columna */
alter table usuarios_renom add website varchar(50) null;

/*Añadir una restriccion a una columna, en este caso el campo email tiene valores unicos*/
alter table usuarios_renom add constraint uq_email unique(email);

/*Borrar una columna*/
alter table usuarios_renom drop website;