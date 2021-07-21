select count(titulo), categoria_id from entradas;

select count(titulo), categoria_id from entradas group by categoria_id;

select titulo, count(titulo) as "Numero de títulos con X categoria", categoria_id from entradas group by categoria_id;

select count(titulo) as "Número de entradas", categoria_id from entradas group by categoria_id;

select count(titulo) as "Número de entradas", categoria_id from entradas group by categoria_id
 having count(titulo) >= 4;

select avg(id) as "Promedio id" from entradas;

select max(id) as "Maximo id" from entradas;

select sum(id) as "suma de ids" from entradas;