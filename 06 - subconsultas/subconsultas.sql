select * from entradas;

select * from usuarios where id in (select usuario_id from entradas);

select usuario_id from entradas;

select * from usuarios where id in (1,1,1,2,2,2,3,3,3);

select * from usuarios where id= 1 and id = 2 and id= 3;

/*Obtener los usuarios que tengan alguna entrada que el titulo contenga GTA*/
select nombre, apellidos from usuarios where id in (
    select usuario_id from entradas where titulo like '%GTA%'
);

/*Obtener todas las entradas de la categoria accion utilizando su nombre*/
select categoria_id, titulo from entradas where categoria_id in (
    select id from categoria where nombre= 'Deportes'
);

/*Obtener las categorias sin entrada*/
select * from categorias where id not in (
    select categoria_id from entradas
);

insert into categorias values(4,"Terror");

select * from usuarios where id in (
    select usuario_id from entradas where DAYOFWEEK(fecha) = 4
);