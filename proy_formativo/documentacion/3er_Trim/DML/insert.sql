-- ----------------------------------------------------------------------------
-- Consultas proyecto Gestor-E
-- ----------------------------------------------------------------------------
-- 1 - Se seleccionan todos los campos de la tabla usuarios.
-- ----------------------------------------------------------------------------
SELECT * FROM users;

-- ----------------------------------------------------------------------------
-- 2 - Seleccione los campos Name1, Name3, UserName, UserEmail 
--     de la tabla usuarios 
-- ----------------------------------------------------------------------------
SELECT Name1, Name3, UserName, UserEmail FROM users;

-- ----------------------------------------------------------------------------
-- 3 - Seleccione los registros cuyo valor sea mayor a 25000
-- ----------------------------------------------------------------------------
SELECT * FROM products 
 WHERE ProductPrice > 25000;
 
 -- ----------------------------------------------------------------------------
-- 4 - Seleccione los registros cuyo valor sea mayor o
--     igual a 10000  
-- ----------------------------------------------------------------------------
SELECT * FROM products 
 WHERE ProductPrice >= 10000;
   
 -- ----------------------------------------------------------------------------
-- 5 - Seleccione los registros cuyo valor sea mayor a 10000 y 
--     la cantidad sea inferior a 10
-- ----------------------------------------------------------------------------
SELECT * FROM products 
 WHERE ProductPrice > 25000
   AND Amount < 10;
   
 -- ----------------------------------------------------------------------------
-- 6 - Seleccione los registros de la tabla usuario que 
--     han sido creados el 01/08/2021
-- ----------------------------------------------------------------------------
SELECT ProductId, ProductName, ProductPrice, ProductAmount, ProductDescription
  FROM products 
 WHERE CreateDate BETWEEN '2020-01-01' 
   AND '2022-01-01';
   
 -- ----------------------------------------------------------------------------
-- 7 - Seleccione los campos ProductId, ProductName, ProductPrice
--     ProductAmount y productDescription cuando los productos
--     esten entre el 01/01/2020 hasta el 01/01/2022
-- ----------------------------------------------------------------------------
 SELECT ProductId, ProductName, ProductPrice, ProductAmount, ProductDescription
   FROM products 
  WHERE CreateDate 
BETWEEN '2020-01-01' 
    AND '2022-01-01';
   
-- ----------------------------------------------------------------------------
-- 8 - Seleccione todos los campos de la tabla products 
--     donde donde el precio sea mayor a 14900 y ordenelo de
--     forma ascendente 
-- ----------------------------------------------------------------------------
SELECT * FROM products 
 WHERE ProductAmount > 14900 
 ORDER BY ProductAmount ASC;   
   
-- ----------------------------------------------------------------------------
-- 9 - Seleccione todos los campos de la tabla products 
--     donde donde el precio sea inferior o igaal de 48000
--     y ordenelo de forma descendente 
-- ----------------------------------------------------------------------------
SELECT * FROM products 
 WHERE ProductAmount <= 48000 
 ORDER BY ProductAmount DESC;    
 
-- ----------------------------------------------------------------------------
-- 10 - Seleccione el ProductId, ProductName y calcule el precio más alto 
--      (ProductPrice) de la tabla products, donde la fecha sea 12/04/2021
-- ----------------------------------------------------------------------------
SELECT ProductId, ProductName, MAX(ProductPrice) AS precio_alto FROM products 
WHERE CreateDate = '2021-04-12'; 
  
-- ----------------------------------------------------------------------------
-- 11 - Seleccione ProductName y sume los precios
--      de la tabla products
-- ----------------------------------------------------------------------------
SELECT ProductName, SUM(ProductPrice) FROM products;
-- ----------------------------------------------------------------------------  
   
   
-- ----------------------------------------------------------------------------
-- 3 - Seleccione los campos sección, nombre_articulo y precio
--     de la tabla productos donde sección sea igual a 'CERÁMICA'
-- ----------------------------------------------------------------------------
SELECT seccion, nombre_articulo, precio FROM productos 
WHERE seccion = 'CERÁMICA';
-- ----------------------------------------------------------------------------
-- 3 - Seleccione los campos sección, nombre_articulo y precio
--     de la tabla productos donde sección sea igual a 'CERÁMICA' 
--     'Y' (realmente es 'O') 'DEPORTES'
-- ----------------------------------------------------------------------------
SELECT seccion, nombre_articulo, precio FROM productos 
WHERE seccion = 'CERÁMICA' OR seccion = 'DEPORTES';
-- ----------------------------------------------------------------------------
-- 4 - Seleccione todos los campos de la tabla productos 
--     donde sección sea igual a 'DEPORTES' Y su país de origen  
--     sea 'USA'
-- ----------------------------------------------------------------------------
SELECT * FROM productos WHERE seccion = 'DEPORTES' AND pais_origen = 'USA';
-- ----------------------------------------------------------------------------
-- 5 - Seleccione todos los campos de la tabla productos 
--     donde precio sea mayor 300
-- ----------------------------------------------------------------------------
SELECT * FROM productos WHERE precio > 300;
-- ----------------------------------------------------------------------------
-- 6 - Seleccione todos los campos de la tabla productos 
--     donde la fecha esté entre '2000-03-01' Y '2000-04-30'
-- ----------------------------------------------------------------------------
SELECT * FROM productos WHERE fecha BETWEEN '2000-03-01' AND '2000-04-30';
SELECT * FROM productos WHERE fecha >= '2000-03-01' AND fecha <= '2000-04-30';
-- ----------------------------------------------------------------------------
-- 7 - Seleccione todos los campos de la tabla productos 
--     donde la sección sea igual a 'CERÁMICA' Y 'DEPORTES' y que lo
--     ordene por la sección (Ascendente)
-- ----------------------------------------------------------------------------
SELECT * FROM productos WHERE seccion = 'CERÁMICA' 
OR seccion = 'DEPORTES' ORDER BY seccion ASC;
-- ----------------------------------------------------------------------------
-- 8 - Seleccione todos los campos de la tabla productos 
--     donde la sección sea igual a 'CERÁMICA' Y 'DEPORTES' y que lo
--     ordene por la sección (Descendente)
-- ----------------------------------------------------------------------------
SELECT * FROM productos WHERE seccion = 'CERÁMICA' 
OR seccion = 'DEPORTES' ORDER BY seccion DESC;
-- ----------------------------------------------------------------------------
-- 9 - Seleccione todos los campos de la tabla productos 
--     donde la sección sea igual a 'CERÁMICA' Y 'DEPORTES' y que lo
--     ordene por el precio (ascendente o descendente)
-- ----------------------------------------------------------------------------
SELECT * FROM productos WHERE seccion = 'CERÁMICA' 
OR seccion = 'DEPORTES' ORDER BY precio;
-- ----------------------------------------------------------------------------
-- 10 - Seleccione todos los campos de la tabla productos 
--     donde la sección sea igual a 'CERÁMICA' Y 'DEPORTES' y que lo
--     ordene por sección y luego por precio
-- ----------------------------------------------------------------------------
SELECT * FROM productos WHERE seccion = 'CERÁMICA' 
OR seccion = 'DEPORTES' ORDER BY seccion, precio;
-- ----------------------------------------------------------------------------
-- 11 - Seleccione todos los campos de la tabla productos 
--     donde la sección sea igual a 'CERÁMICA' Y 'DEPORTES' y que lo
--     ordene por sección y país de origen
-- ----------------------------------------------------------------------------
SELECT * FROM productos WHERE seccion = 'CERÁMICA' 
OR seccion = 'DEPORTES' ORDER BY seccion, pais_origen;
-- ----------------------------------------------------------------------------
-- 12 - Seleccione la sección (agrupación) y sume los precios (cálculo)
--      de la tabla productos y lo agrupe por la sección
-- ----------------------------------------------------------------------------
SELECT seccion, SUM(precio) FROM productos GROUP BY seccion;
-- ----------------------------------------------------------------------------
-- 13 - Seleccione la sección (agrupación) y sume los precios (cálculo)
--      de la tabla productos, lo agrupe por la sección y los ordene por
--      precio
-- ----------------------------------------------------------------------------
SELECT seccion, SUM(precio) AS sum_articulos FROM productos 
GROUP BY seccion ORDER BY sum_articulos;
-- ----------------------------------------------------------------------------
-- 14 - Seleccione la sección (agrupación) y calcule la media de los 
--      precios (cálculo) de la tabla productos, lo agrupe por la sección 
--      DEPORTES y CONFECCIÓN y los ordene por la media de los artículos
-- ----------------------------------------------------------------------------
SELECT seccion, AVG(precio) AS media_articulos FROM productos GROUP BY seccion 
HAVING seccion = 'DEPORTES' OR seccion = 'CONFECCIÓN' ORDER BY media_articulos;
-- ----------------------------------------------------------------------------
-- 15 - Seleccione la población (agrupación) y cuente de los clientes 
--      (cálculo) de la tabla clientes, lo agrupe por la población y los 
--      ordene descendentemente por la cantidad de clientes
-- ----------------------------------------------------------------------------
SELECT poblacion, COUNT(codigo_cliente) AS num_cliente FROM clientes 
GROUP BY poblacion ORDER BY num_cliente DESC;
-- ----------------------------------------------------------------------------
-- 16 - Seleccione la seccion (agrupación) y calcule el precio más alto 
--      (cálculo) de la tabla productos, donde la sección sea CONFECCIÓN y lo 
--      los ordene por la sección
-- ----------------------------------------------------------------------------
SELECT seccion, MAX(precio) AS precio_alto FROM productos 
WHERE seccion = 'CONFECCIÓN' GROUP BY seccion;
-- ----------------------------------------------------------------------------
-- 17 - Seleccione el articulo, seccion y precio de la tabla productos y 
--      cree un campo calculado del precio más el IVA
-- ----------------------------------------------------------------------------
SELECT nombre_articulo, seccion, precio, precio*1.19 FROM productos;
-- ----------------------------------------------------------------------------
-- 18 - Seleccione el articulo, seccion y precio de la tabla productos y 
--      cree un campo calculado del precio más el IVA, llame el nuevo campo
--      como precio_con_iva
-- ----------------------------------------------------------------------------
SELECT nombre_articulo, seccion, precio, precio*1.19 AS precio_con_iva 
FROM productos;
-- ----------------------------------------------------------------------------
-- 19 - Seleccione el articulo, seccion y precio de la tabla productos y 
--      cree un campo calculado del precio más el IVA, redondee a dos decimales
--      y llame el nuevo campo como precio_con_iva
-- ----------------------------------------------------------------------------
SELECT nombre_articulo, seccion, precio, ROUND(precio*1.19,2) AS precio_con_iva 
FROM productos;
-- ----------------------------------------------------------------------------
-- 20 - Seleccione el articulo, seccion, precio y fecha de la tabla productos, 
--      cree un campo calculado de la diferencia de días entre la fecha y 
--      y la fecha actual, agrupelo por la sección DEPORTES
-- ----------------------------------------------------------------------------
SELECT nombre_articulo, seccion, precio, fecha, DATE_FORMAT(NOW(),'%Y-%m-%d')
AS dia_de_hoy, DATEDIFF(NOW(),fecha) AS diferencia_dias FROM productos 
WHERE seccion = 'DEPORTES';
-- ----------------------------------------------------------------------------
-- 25 - Insertar un pedido
-- ----------------------------------------------------------------------------
INSERT INTO pedidos VALUES (null, 4, '2021-05-15', 'Contado', 3.5, 1);
-- ----------------------------------------------------------------------------
-- 26 - Insertar varios pedidos
-- ----------------------------------------------------------------------------
INSERT INTO pedidos
(numero_pedido, codigo_cliente, fecha_pedido, forma_pago, descuento, enviado) 
VALUES 
(null,1,'2021-05-14','Crédito',0,0),
(null,2,'2021-05-15','Contado',10,1);
-- ----------------------------------------------------------------------------
-- 27 - Insertar lista de productos
-- ----------------------------------------------------------------------------
INSERT INTO productos_pedidos (numero_pedido, codigo_articulo, unidades) VALUES 
(2,1,3),
(2,2,2),
(2,3,2);
-- ----------------------------------------------------------------------------
-- 28 - Mostar cómo se creo la tabla pedidos
-- ----------------------------------------------------------------------------
SHOW CREATE TABLE pedidos;
-- ----------------------------------------------------------------------------
-- 29 - Mostar cómo se creo la tabla productos_pedidos
-- ----------------------------------------------------------------------------
SHOW CREATE TABLE productos_pedidos;
-- ----------------------------------------------------------------------------
-- 30 - Eliminar CONSTRAINT de la tabla pedidos con clientes
-- ----------------------------------------------------------------------------
ALTER TABLE pedidos DROP CONSTRAINT fk_pedidos_clientes;
-- ----------------------------------------------------------------------------
-- 31 - Eliminar KEY de la tabla pedidos con clientes
-- ----------------------------------------------------------------------------
ALTER TABLE pedidos DROP KEY fk_pedidos_clientes;
-- ----------------------------------------------------------------------------
-- 32 - Eliminar CONSTRAINT de la tabla productos_pedidos con pedidos
-- ----------------------------------------------------------------------------
ALTER TABLE productos_pedidos DROP CONSTRAINT fk_productos_pedidos_pedidos
-- ----------------------------------------------------------------------------
-- 33 - Eliminar KEY de la tabla productos_pedidos con pedidos
-- ----------------------------------------------------------------------------
ALTER TABLE pedidos DROP KEY fk_productos_pedidos_pedidos
-- ----------------------------------------------------------------------------
-- 34 - Eliminar registros de la tabla pedidos
-- ----------------------------------------------------------------------------
TRUNCATE pedidos
-- ----------------------------------------------------------------------------
-- 35 - Eliminar registros de la tabla productos_pedidos
-- ----------------------------------------------------------------------------
TRUNCATE productos_pedidos
-- ----------------------------------------------------------------------------
-- 36 - Agregar CONSTRAINT, foreign key, references, on delete, on update
-- ----------------------------------------------------------------------------
ALTER TABLE pedidos 
ADD CONSTRAINT fk_pedidos_clientes 
FOREIGN KEY (codigo_cliente)
REFERENCES clientes (codigo_cliente)
ON DELETE CASCADE
ON UPDATE CASCADE
-- ----------------------------------------------------------------------------
-- 37 - Agregar CONSTRAINT, foreign key, references, on delete, on update
-- ----------------------------------------------------------------------------
ALTER TABLE productos_pedidos
ADD CONSTRAINT fk_productos_pedidos_pedidos
FOREIGN KEY (numero_pedido)
REFERENCES pedidos (numero_pedido)
ON DELETE CASCADE
ON UPDATE CASCADE
-- ----------------------------------------------------------------------------
-- 21 - Seleccione todos los campos de la tabla productos, donde la sección sea 
--      igual a DEPORTES; una el resultado con la selección de todos los campos
--      de la tabla productosnuevos, donde la sección sea igual a DEPORTES DE 
--      RIESGO
-- ----------------------------------------------------------------------------
SELECT * FROM productos WHERE seccion = 'DEPORTES' UNION 
SELECT * FROM productos_nuevos WHERE seccion = 'DEPORTES DE RIESGO' 
-- ----------------------------------------------------------------------------
-- 22 - Seleccione todos los campos de la tabla productos, donde el precio del
--      articulo sea superior a 500 euros y en la tabla productosnuevos, 
--      donde la sección sea igual a ALTA COSTURA
-- ----------------------------------------------------------------------------
SELECT * FROM productos WHERE precio > 500 UNION 
SELECT * FROM productos_nuevos WHERE seccion = 'ALTA COSTURA'
-- ----------------------------------------------------------------------------
-- 23 - Seleccione todos los campos de la tabla productos, donde la sección sea
--      igual a DEPORTES y en la tabla productosnuevos, todos los productos
--      sin incluir repeticiones
-- ----------------------------------------------------------------------------
SELECT * FROM productos WHERE seccion = 'DEPORTES' UNION
SELECT * FROM productos_nuevos
-- ----------------------------------------------------------------------------
-- 24 - Seleccione todos los campos de la tabla productos, donde la sección sea
--      igual a DEPORTES y en la tabla productosnuevos, todos los productos
--      incluyendo repeticiones
-- ----------------------------------------------------------------------------
SELECT * FROM productos WHERE seccion = 'DEPORTES' UNION ALL
SELECT * FROM productos_nuevos
-- ----------------------------------------------------------------------------
-- Inner Join, Outer Joins (Right Join, Left Join [Composiciones Externas])
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- 38 - Inner Join: Solo la información común entre las tablas: clientes y 
-- pedidos. Clientes de Madrid que SÍ han hecho pedidos
-- ----------------------------------------------------------------------------
SELECT * FROM clientes INNER JOIN pedidos 
ON clientes.codigo_cliente = pedidos.codigo_cliente
WHERE poblacion = 'MADRID' ORDER BY clientes.codigo_cliente
-- ----------------------------------------------------------------------------
-- 39 - Left Join: La información de la tabla de la izquierda (clientes) y 
-- y la información común entre las tablas: clientes y pedidos.
-- Todos los clientes de Madrid y que además hayan hecho pedidos
-- ----------------------------------------------------------------------------
SELECT * FROM clientes LEFT JOIN pedidos 
ON clientes.codigo_cliente = pedidos.codigo_cliente
WHERE poblacion = 'MADRID' ORDER BY clientes.codigo_cliente
-- ----------------------------------------------------------------------------
-- 40 - Todos los clientes de Madrid y que no hayan hecho pedidos
-- ----------------------------------------------------------------------------
SELECT * FROM clientes LEFT JOIN pedidos 
ON clientes.codigo_cliente = pedidos.codigo_cliente
WHERE poblacion = 'MADRID' AND pedidos.codigo_cliente IS null
ORDER BY clientes.codigo_cliente
-- ----------------------------------------------------------------------------
-- 41 - Right Join: La información de la tabla de la derecha (pedidos) y 
-- y la información común entre las tablas: clientes y pedidos
-- Todos pedidos que se hayan hecho, así no tengan clientes asociados (OJO)
-- ----------------------------------------------------------------------------
SELECT * FROM clientes RIGHT JOIN pedidos 
ON clientes.codigo_cliente = pedidos.codigo_cliente
ORDER BY clientes.codigo_cliente