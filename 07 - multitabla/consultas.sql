/*Mostrar las entradas con el nombre del autor y de la categoria*/

/*Mostrar las entrasdas con el nombre del autor y de la categoria*/
select entradas.id, entradas.titulo, usuarios.nombre, categorias.nombre
from entradas
inner join usuarios on entradas.usuario_id = usuarios.id
inner join categorias on entradas.categoria_id = categorias.id 
order by entradas.id;


select e.id, e.titulo, u.nombre, c.nombre
from entradas e
inner join usuarios u on e.usuario_id = u.id
inner join categorias c on e.categoria_id = c.id 
order by e.id;

/*Numero de entradas de categorias*/
select c.nombre, count(e.id) 
from categorias c 
inner join entradas e on e.categoria_id = c.id
group by e.categoria_id;
/*group by c.nombre*/

select c.nombre, count(e.id) from categorias c 
left join entradas e on e.categoria_id = c.id group by e.categoria_id;

