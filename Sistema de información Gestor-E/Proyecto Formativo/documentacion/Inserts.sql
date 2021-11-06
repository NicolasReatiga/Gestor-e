SET IDENTITY_INSERT [Gestor-e].roles ON

INSERT INTO [Gestor-e].[gestor-e].roles (RolId, RolName, RolDescription) VALUES
(1, 'Administrador', 'Control total en el sistema'),
(2, 'Operario logistico', 'Puede crear, eliminar y modificar en el modulo de proveedores y productos'),
(3, 'Operario fabrica', 'Puede crear solicitudes y visualizarlas'),
(4, 'Analísta', 'Puede visualizar los datos, pero no puede crear ni modificarlos');

SET IDENTITY_INSERT [Gestor-e].roles OFF


SET IDENTITY_INSERT [Gestor-e].users ON
INSERT INTO [Gestor-e].[gestor-e].users (UserId, Identification, Name1, Name2, Name3, Name4, UserName, Password, UserEmail, Roles_RolId) VALUES
(1, 55456456, 'Juan', 'Daniel', 'Perez', 'Hernandez', 'Judape', 'Deniher123', '', 1),
(2, 55456457, 'Andrea', NULL, 'Perea', 'Perea', 'Anpepe', 'APEPE123.', '', 1),
(3, 55456458, 'Claudio', 'Ferney', 'Ramirez', NULL, 'Clfera', 'claudio.', '', 2),
(4, 55456459, 'Carlos', NULL, 'Torres', 'Ochoa', 'Catoto', 'Cacotoa560', '', 3),
(5, 55456460, 'Matt', 'Diego', 'Gutierrez', NULL, 'Madigu', 'B5113C', '', 3),
(6, 55456461, 'Cristina', NULL, 'Ferrer', NULL, 'Crfe', 'gNeJ@RpaCKt$', '', 2),
(7, 55456462, 'Gabriela', 'Fernanda', 'Andrade', 'Herrera', 'Gafean', 'GabriEla1.2.', '', 3),
(8, 55456463, 'Luisa', NULL, 'Jimenez', 'Rodriguez', 'Lujiro', '123456', '', 3),
(9, 55456464, 'Javier', 'Andrés', 'Rodriguez', NULL, 'Jaanro', 'qwerty123', '', 3),
(10, 55456465, 'Geronimo', 'Leonardo', 'Mantilla', 'Ortiz', 'Gelema', '654321', '', 3),
(11, 55456466, 'Fabian', NULL, 'Zuñiga', NULL, 'Fazu', 'millonarios', '', 3),
(12, 55456467, 'Luis', 'Alexander', 'Catiblanco', 'Perez', 'Lualca', 'luisalexander', '', 3),
(13, 55456468, 'Camila', 'Andrea', 'Fernandez', NULL, 'Caanfe', 'fercami49903-', '', 2),
(14, 55456469, 'Lorenzo', NULL, 'Aguilera', 'Aguilera', 'Loagag', 'Laqwzx09', '', 4),
(15, 55456470, 'Hernando', NULL, 'Espitia', 'Pico', 'Heespi', '199200043', '', 4),
(16, 55456471, 'Juan', NULL, 'Zeke', 'Vivid', 'Juzevi', '2238884', '', 2),
(17, 55456472, 'Alvaro', 'Jose', 'Buenavista', NULL, 'Aljobu', 'alvarojose.', '', 2),
(18, 55456473, 'Cristian', 'Camilo', 'Rojas', 'Henao', 'Crcaro', 'cristianc4m1l0', '', 3),
(19, 55456474, 'Alex', NULL, 'Henao', 'Gutierrez', 'Alhegu', 'ALExHenao', '', 2),
(20, 55456475, 'Felipe', 'Andres', 'Prieto', 'Alejo', 'Feanpr', '55456475.123456.', '', 4);
SET IDENTITY_INSERT [Gestor-e].users OFF


INSERT INTO [Gestor-e].[gestor-e].categories (CategoryId, CategoryName, CategoryDescription, CreateDate, Users_UserId) VALUES
(1, 'Agujas', 'Productos de tipo agujas', '2020-01-01', 1),
(2, 'Lanas', 'Textil: Lana', '2020-01-01', 1),
(3, 'Costura y bordado', 'Elementos de costura y bordado', '2020-01-01', 2),
(4, 'Elasticos', 'Productos elasticos', '2020-01-01', 2),
(5, 'Cintas', 'Centas para fabricación', '2020-01-01', 2),
(6, 'Telares', 'Telares para fabricación', '2020-01-01', 2),
(7, 'Rollos de Tela', 'Productos de tela', '2020-01-01', 2),
(8, 'Productos fabricados', 'Productos terminados', '2020-01-01', 1);
SET IDENTITY_INSERT [Gestor-e].categories OFF

SET IDENTITY_INSERT [Gestor-e].suppliers ON
INSERT INTO [Gestor-e].[gestor-e].suppliers (SupplierId, SupplierName, SupplierPhone, SupplierAddress, SupplierDescription, SupplierWeb, SupplierEmail, CreateDate, Users_UserId) VALUES
(1, 'Ventas Arango', 1234567, 'Carrera 13', 'Vendedor Arango', '', '', '2020-01-01', 1),
(2, 'Fabrica de Agujas', 1234568, 'Calle 25', 'Compras de Agujas para maquinaria', NULL, '', '2020-01-01', 1),
(3, 'Lanas Marlana', 1234569, 'Diagonal 2', 'Venta de Lana especial. LV7-9', NULL, NULL, '2020-01-01', 1),
(4, 'Fabrica de Cueros La Cuerina', 1234570, 'Carrera 23', NULL, '', '', '2020-01-01', 2),
(5, 'Casa de la cosutra', 1234571, 'CC Andino L403', 'Elementos para costura Mariana', '', '', '2020-01-01', 2),
(6, 'Partelas SA', 1234572, 'Diagonal 23', 'Fabrica de telas', '', NULL, '2020-01-01', 2),
(7, 'Elasticos San Javier', 1234573, 'Calle 1', 'Fabrica de elasticos', NULL, '', '2020-01-01', 2),
(8, 'TEXTICORPSA', 1234574, 'Calle 26', NULL, NULL, '', '2020-01-01', 2),
(9, 'Luipetrel SA', 1234575, 'Diagonal 24', 'Vendedores y fabricantes de lana', NULL, '', '2020-01-01', 2),
(10, 'Vitugoz', 1234576, 'Calle 45 # 12B', 'Confecciones Vitugoz', 'vitugoz.com', '', '2020-01-01', 1);
SET IDENTITY_INSERT [Gestor-e].suppliers OFF

SET IDENTITY_INSERT [Gestor-e].bills ON
INSERT INTO [Gestor-e].[gestor-e].bills (BillId, BillName, BillDescription, BillDate, Suppliers_SupplierId) VALUES
(1, 'Compra agujas', 'Compra de agujas de lana, singer, crochet', '2020-01-06', 2),
(2, 'Compra elasticos', 'Compra de 100 metros de elastico', '2020-01-06', 7),
(3, 'Compra de cinta', 'Cinta raso 10 metros', '2020-10-25', 1),
(4, 'compra de Lana', 'Compra de lana para tejer, rosa y gris', '2020-10-25', 9),
(5, 'Compra de telas', 'Compra de telas para bordar y de tela seda', '2020-10-26', 6),
(6, 'Compra de hilo', 'Rollo de hilo y conos de hilaza', '2020-11-01', 5),
(7, 'Compra de lana', 'Lana para tejer premium', '2020-11-01', 3),
(8, 'Compra diversa', 'Se compra lana, vinilo y elastico', '2020-11-01', 5),
(9, 'compra de cinta velcro', 'Se compra cinta de velcro doble faz', '2021-01-06', 8),
(10, 'Compra de elastico', 'Se compra elastico blanco', '2021-01-16', 1),
(11, 'Compra diversa', 'Se compran kits de ovillos y tela para mostac', '2021-03-16', 5),
(12, 'Compra de hilo', 'Se compra hilo invisible', '2021-04-09', 1),
(13, 'Compra Tela', 'Se compra tela antifluido', '2021-04-12', 6),
(14, 'Compra de telar', 'Se compra telar artesanal de madera', '2021-06-12', 5);
SET IDENTITY_INSERT [Gestor-e].bills OFF

SET IDENTITY_INSERT [Gestor-e].products ON
INSERT INTO [Gestor-e].[gestor-e].products (ProductId, ProductName, ProductPrice, ProductAmount, ProductDescription, CreateDate, Categories_CategoryId, Users_UserId, Suppliers_SupplierId, Bills_BillId) VALUES 
(1, 'Agujas Laneras', 1400, 34, 'Agujas laneras 6.0 cm', '2020-06-01', 1, 1, 2, 1), 
(2, 'Lana', 10800, 17, 'Lana para tejer, suave antialergica, rosa x100g', '2020-10-25', 2, 1, 9, 4), 
(3, 'Lana', 10800, 3, 'Lana para tejer, suave antialergica, gris x100g', '2020-10-26', 2, 1, 9, 4), 
(4, 'Agujas Singer', 11900, 23, 'Agujas Singer para maquina', '2020-06-01', 1, 2, 2, 1), 
(5, 'Tela Aida', 33200, 45, 'Tela aida para bordar con punto de cruz (1,80 x 1,00 mts)', '2020-10-26', 3, 2, 6, 5), 
(6, 'Agujas de Bambú', 32700, 12, 'Agujas de bambú para tejer', '2020-06-01', 1, 2, 2, 1), 
(7, 'Hilo Yute', 23500, 4, 'Rollo de Hilo de Yute 1mm de grosor', '2020-11-01', 3, 2, 5, 6), 
(8, 'Hilaza Crudo', 30000, 12, '1 Cono de Hilaza Cruda 8/36 (4mm)', '2020-11-01', 3, 2, 5, 6), 
(9, 'Elastico redondo', 30000, 9, '100 metros de elástico afelpado negro de 3 mm especial para manualidades y confección.', '2020-06-01', 4, 2, 7, 2), 
(10, 'Lana', 10800, 21, 'Lana para tejer, suave antialergica, verde x100g', '2020-11-01', 2, 2, 3, 7), 
(11, 'Lana', 10800, 34, 'Lana para tejer, suave antialergica, blanco x100g', '2020-11-01', 2, 2, 3, 7), 
(12, 'Ovillos Kit x10', 41500, 3, 'Kit de ovillos de hilo perle', '2021-03-17', 3, 2, 5, 11), 
(13, 'Agujas Crochet x9', 32400, 4, 'Kit de 9 agujas Crochet', '2020-06-01', 1, 2, 2, 1), 
(14, 'Elastico blanco 1cm', 17500, 22, 'Elástico blanco 1 cm x 100 metros', '2021-01-16', 4, 2, 1, 10), 
(15, 'Cinta de velcro', 19000, 4, 'Cinta de velcro doble faz 1cm, rollo 5mts', '2021-01-06', 5, 2, 8, 9), 
(16, 'Telar para mostacilla', 49800, 1, 'Telar para mostacilla', '2021-03-17', 6, 1, 5, 11), 
(17, 'Hilo Invisible', 4300, 11, 'Hilo invisible para alta costura transparente', '2021-04-09', 3, 2, 1, 12), 
(18, 'Vinilo textil', 18790, 1, 'Vinilo textil Americano Glitter', '2020-11-01', 3, 1, 5, 8), 
(19, 'Elastico negro 4cm', 15000, 12, 'Elástico negro de 4 cms x 45 mts', '2020-06-01', 4, 2, 7, 2), 
(20, 'Tela antifluido', 10800, 7, 'Tela antifluido (1,50 x 1,00)', '2021-04-12', 7, 2, 6, 13), 
(21, 'Tela impermeable', 11000, 12, 'Tela impermeable (1,50 x 1,00), roja', '2020-11-01', 7, 2, 5, 8), 
(22, 'Elastico blanco 5cm', 17500, 45, 'Elástico Blanco de 5 cms x 45 mts', '2021-01-06', 4, 2, 8, 8), 
(23, 'Tela seda', 6000, 5, 'Tela seda poliester (1,50 x 1,00), negra', '2020-10-26', 7, 2, 6, 5), 
(24, 'Cinta raso negra', 9900, 2, 'Cinta raso de 24 mm x 10mts, negro', '2020-10-25', 5, 2, 1, 3), 
(25, 'Telar en macramé', 260000, 1, 'Telar en Macramé', '2021-06-12', 6, 2, 5, 14), 
(26, 'Cinta raso gris', 9900, 34, 'Cinta raso de 24 mm x 10mts, gris', '2020-10-25', 5, 2, 1, 3), 
(27, 'Elastico negro 5cm', 17500, 23, 'Elástico negro de 5 cms x 45 mts', '2021-04-12', 4, 1, 6, 13), 
(28, 'Entretela', 7000, 10, 'Entretela fusionable Tejida de 70 Gramos, negra, por metro', '2021-04-12', 7, 2, 6, 13); 
SET IDENTITY_INSERT [Gestor-e].products OFF