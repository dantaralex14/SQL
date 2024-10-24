INSERT INTO Empleados VALUES ('EM-01', 'Agustin', 'Hernandez', 'Av. Maximiliano Cepeda #8', 1237892850),
('EM-02', 'Rosalia', 'Sanchez', 'Jr. Irene Otero #6648', 2574125800),
('EM-03', 'Maria', 'Clemente', 'Cl. Ximena Ballesteros #7070 Piso 7', 7539514258),
('EM-04', 'Fermin', 'Lucena', 'Cl. Dylan Sáenz #3559 Piso 8', 7485147529),
('EM-05', 'John', 'Cuellar', 'Av. José Casanova #8', 7485413099),
('EM-06', 'Rocio', 'Aguilera', 'Urb. Camila Rivero #69', 9865236951),
('EM-07', 'Salud', 'Arana', 'Cl. Juan Manuel Piña #0511', 9875145844),
('EM-08', 'Jesus', 'Cabezas', 'Av. Oliva Alaniz #9207', 3215684554);

INSERT INTO Clientes VALUES('C-01', 'Pere', 'Rodenas', 'Jr. Nadia Guardado #6', 3121458521),
('C-02', 'Clotilde', 'Alfonso', 'Av. Valentina Sanches #637', 3129863830),
('C-03', 'Joshua', 'Porras', 'Urb. Camila Godínez #37 Piso 1', 31210926731),
('C-04', 'Matias', 'Navarro', 'Jr. Juan Sedillo #820', 3124584245),
('C-05', 'Valentin', 'Rosales', 'Jr. Magdalena Ríos #422 Piso 1', 3128456947),
('C-06', 'Gabriel', 'Chacon', 'Jr. Isidora Méndez #1', 3127485474),
('C-07', 'Silvana', 'Carmona', 'Jr. Ricardo Ornelas #9 Dpto. 539', 3127485485),
('C-08', 'Francisco', 'Leal', 'Av. Fabiana Crespo #28', 3129653262);

INSERT INTO Categorias VALUES(1, 'Pantalones'),
(2, 'Abrigos'),
(3, 'Zapatos'),
(4, 'Camisas'),
(5, 'Shorts');

INSERT INTO Productos VALUES('PR-01', 'Jeans Refill Jogger', 1, 'Azul', 'Ch', 150.00),
('PR-02', 'Zapatillas Frida Kollection', 3, 'Verde', 'Gd', 200.00),
('PR-03', 'Abrigo Sahara', 2, 'cafe', 'Ch', 400.00),
('PR-04', 'Short Lady Sun', 5, 'Blanco', 'M', 900.00),
('PR-05', 'Blusa 18 Forever', 4, 'Beige', 'Ch', 870.00),
('PR-06', 'Camisa Casual Refill', 4, 'Rayas', 'M', 640.00),
('PR-07', 'Pantalon Dockers', 1, 'Negro', 'Gd', 510.00),
('PR-08', 'Short Puma', 5, 'Gris', 'M', 470.00),
('PR-09', 'Tenis Nike Air Max', 3, 'Blanco', 'Ch', 790.00),
('PR-10', 'Abrigo Wall Street', 2, 'Negro', 'Gd', 680.00),
('PR-11', 'Zapatos Brantano', 3, 'Negro', 'Ch', 470.00);

INSERT INTO Proveedores VALUES('PV-01', 'Sugarlips', 'Urb. Alex Del Valle #76868', 'sugarlips@gmail.com', 3121234567),
('PV-02', 'LAShowroom', 'Av. Luana Medrano #575 Piso 42', 'lashowroom@gmail.com', 3127894561),
('PV-03', 'HanaFashion', 'Av. Christopher Arevalo #785 Hab. 822', 'hanafashion@gmail.com', 3124568521),
('PV-04', 'ZaaSmart', 'Cl. Javier Gaytán #38713 Dpto. 951', 'zaasmart@gmail.com', 3124865247),
('PV-05', 'Tekstila', 'Cl. Maite Marín #17', 'tekstila@gmail.com', 3127895623),
('PV-06', 'Modastock', 'Av. Mariangel Almanza #7106 Piso 72', 'modastock@gmail.com', 3127419623),
('PV-07', 'Ganga Lotes', 'Cl. Alex Córdova #71038 Piso 6', 'gangalotes@gmail.com', 3128457485),
('PV-08', 'BrandsGateway', 'Urb. Anthony Vega # 7496', 'brandsgateway@gmail.com', 3129586952);

INSERT INTO CreditoCte VALUES('C-01', 'PR-08', 1410, '2023/05/11', 3, 'EM-01'),
('C-01', 'PR-10', 680, '2023/05/21', 1, 'EM-02'),
('C-03', 'PR-11', 940, '2023/02/05', 2, 'EM-03'),
('C-07', 'PR-01', 450, '2023/05/14', 3, 'EM-03'),
('C-03', 'PR-05', 870, '2023/01/17', 1, 'EM-04'),
('C-02', 'PR-05', 1740, '2023/05/14', 2, 'EM-05'),
('C-04', 'PR-06', 1280, '2023/05/07', 2, 'EM-01'),
('C-06', 'PR-07', 1530, '2023/11/08', 3, 'EM-06'),
('C-07', 'PR-04', 900, '2023/12/22', 1, 'EM-07'),
('C-02', 'PR-02', 600, '2023/03/21', 3, 'EM-01');

INSERT INTO CreditoCte VALUES('C-07', 'PR-01', 450, '2023/05/14', 3, 'EM-03');
INSERT INTO ProductoProveedor VALUES('PR-01', 'PV-01', 70),
('PR-02', 'PV-01', 50),
('PR-03', 'PV-02', 68),
('PR-04', 'PV-04', 100),
('PR-05', 'PV-03', 40),
('PR-06', 'PV-04', 75),
('PR-07', 'PV-05', 60),
('PR-08', 'PV-06', 70),
('PR-09', 'PV-07', 90),
('PR-10', 'PV-08', 85),
('PR-11', 'PV-08', 100);
