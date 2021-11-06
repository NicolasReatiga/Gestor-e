-- ----------------------------------------------------------------------------
-- Consultas proyecto Gestor-E
-- ----------------------------------------------------------------------------
-- 1 - Se seleccionan todos los campos de la tabla usuarios.
-- ----------------------------------------------------------------------------
SELECT * FROM [Gestor-e].[gestor-e].users;

-- ----------------------------------------------------------------------------
-- 2 - Seleccione los campos Name1, Name3, UserName, UserEmail 
--     de la tabla usuarios 
-- ----------------------------------------------------------------------------
SELECT Name1, Name3, UserName, UserEmail FROM [Gestor-e].[gestor-e].users;

-- ----------------------------------------------------------------------------
-- 3 - Seleccione los registros cuyo valor sea mayor a 25000
-- ----------------------------------------------------------------------------
SELECT * FROM [Gestor-e].[gestor-e].products 
 WHERE ProductPrice > 25000;
 
 -- ----------------------------------------------------------------------------
-- 4 - Seleccione los registros cuyo valor sea mayor o
--     igual a 10000  
-- ----------------------------------------------------------------------------
SELECT * FROM [Gestor-e].[gestor-e].products 
 WHERE ProductPrice >= 10000;
   
 -- ----------------------------------------------------------------------------
-- 5 - Seleccione los registros cuyo valor sea mayor a 10000 y 
--     la cantidad sea inferior a 10
-- ----------------------------------------------------------------------------
SELECT * FROM [Gestor-e].[gestor-e].products
 WHERE ProductPrice > 25000
   AND ProductAmount < 10;
   
 -- ----------------------------------------------------------------------------
-- 6 - Seleccione los registros de la tabla productos que 
--     han sido creados el 01/08/2021
-- ----------------------------------------------------------------------------
SELECT ProductId, ProductName, ProductPrice, ProductAmount, ProductDescription, CreateDate
  FROM [Gestor-e].[gestor-e].products 
 WHERE CreateDate = '2020-11-01';
   
 -- ----------------------------------------------------------------------------
-- 7 - Seleccione los campos ProductId, ProductName, ProductPrice
--     ProductAmount y productDescription cuando los productos
--     esten entre el 01/01/2020 hasta el 01/01/2022
-- ----------------------------------------------------------------------------
 SELECT ProductId, ProductName, ProductPrice, ProductAmount, ProductDescription, CreateDate
   FROM [Gestor-e].[gestor-e].products 
  WHERE CreateDate 
BETWEEN '2020-01-01' 
    AND '2022-01-01';
   
-- ----------------------------------------------------------------------------
-- 8 - Seleccione todos los campos de la tabla products 
--     donde donde el precio sea mayor a 14900 y ordenelo de
--     forma ascendente 
-- ----------------------------------------------------------------------------
SELECT * FROM [Gestor-e].[gestor-e].products  
 WHERE ProductPrice > 14900 
 ORDER BY ProductPrice ASC;   
   
-- ----------------------------------------------------------------------------
-- 9 - Seleccione todos los campos de la tabla products 
--     donde donde el precio sea inferior o igual de 48000
--     y ordenelo de forma descendente 
-- ----------------------------------------------------------------------------
SELECT * FROM [Gestor-e].[gestor-e].products   
 WHERE ProductPrice <= 48000 
 ORDER BY ProductPrice DESC;    
 
-- ----------------------------------------------------------------------------
-- 10 - Seleccione el ProductId, ProductName y calcule el precio más alto 
--      (ProductPrice) de la tabla products, donde la fecha sea 12/04/2021
-- ----------------------------------------------------------------------------
SELECT ProductId, ProductName, MAX(ProductPrice) AS precio_alto, CreateDate FROM [Gestor-e].[gestor-e].products  
WHERE CreateDate = '2021-04-12'
GROUP BY ProductId, ProductName, CreateDate; 
  
-- ----------------------------------------------------------------------------
-- 11 - Seleccione ProductName y sume los precios
--      de la tabla products
-- ----------------------------------------------------------------------------
SELECT ProductName, SUM(ProductAmount) FROM [Gestor-e].[gestor-e].products  ;
-- ----------------------------------------------------------------------------  

-- ----------------------------------------------------------------------------
-- 12 - Seleccione tadas las facturas que estén asociadas a un producto
--      de la tabla products

SELECT * FROM [Gestor-e].[gestor-e].bills INNER JOIN [Gestor-e].[gestor-e].products
ON [Gestor-e].[gestor-e].bills.BillId = [Gestor-e].[gestor-e].products.Bills_BillId
ORDER BY [Gestor-e].[gestor-e].bills.BillId;
-- ----------------------------------------------------------------------------  

-- ----------------------------------------------------------------------------
-- 13 - Seleccione tadas las facturas que estén asociadas a un producto
--      de la tabla products
SELECT * FROM [Gestor-e].[gestor-e].categories RIGHT JOIN [Gestor-e].[gestor-e].products
ON [Gestor-e].[gestor-e].categories.CategoryId = [Gestor-e].[gestor-e].products.Categories_CategoryId
ORDER BY [Gestor-e].[gestor-e].categories.CategoryId;
   
-- ----------------------------------------------------------------------------
-- Otras sentencias de ejemplo
-- ----------------------------------------------------------------------------

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