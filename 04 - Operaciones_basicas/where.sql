/*Hacer referencia a un elemento o conjunto*/

select nombre, email from usuarios 
 where email='carlos@jesus.com';

select * from usuarios where nombre='Carlos Eduardo';

/*  
OPERADORES DE COMPARACION:
IGUAL               =
DISTINTO            !=
MENOR               <
MAYOR               >
MENOR O IGUAL       <=
MAYOR O IGUAL       >=
ENTRE               BETWEEN A AND B
EN                  IN
ES NULO             IS NULL
NO NULO             IS NOT NULL
COMO                LIKE
NO ES COMO          NOT LIKES
*/
select nombre, apellidos from usuarios where YEAR(fecha)= '2020';
select nombre, apellidos from usuarios where YEAR(fecha)= '2020' OR  YEAR(fecha)= '2021' OR YEAR(fecha)= '2019';

select nombre, apellidos from usuarios where YEAR(fecha)>= '2019';

select nombre, apellidos from usuarios where YEAR(fecha) in('2019','2020','2021');

select nombre, apellidos from usuarios where YEAR(fecha) != '2020' OR ISNULL(fecha);

select nombre, apellidos from usuarios where email='carlos@soza.com' AND password = '1234';

select * from usuarios where nombre like '%o%';
select * from usuarios where nombre like '%o';
select * from usuarios where password like '%12%';

