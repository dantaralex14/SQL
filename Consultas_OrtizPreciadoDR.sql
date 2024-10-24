-- Consulta #1
--Obtener el nombre y apellido de los clientes que fueron
--atendidos por Agustin
SELECT Clientes.Nombre_Cte, Clientes.Apellido_Cte, Productos.Nombre_Prod 
FROM Clientes, CreditoCte, Empleados, Productos WHERE CreditoCte.EmpId = Empleados.Id_Emp 
AND Clientes.Id_Cte = CreditoCte.CteId AND CreditoCte.ProdId = Productos.Id_Producto AND Empleados.Nombre_Emp='Agustin';

--Consulta #2
--Obtener Los productos comprados por el cliente Clotilde
SELECT Clientes.Nombre_Cte, Clientes.Apellido_Cte, Productos.Nombre_Prod, Productos.Precio, CreditoCte.Unidades 
FROM Clientes, CreditoCte, Productos WHERE Productos.Id_Producto = CreditoCte.ProdId AND CreditoCte.CteId = Clientes.Id_Cte AND Clientes.Nombre_Cte = 'Clotilde';

--Consulta #3
--Obtener el nombre y apellido de los clientes que realizaron
--una compra entre $700 y $1000
SELECT Clientes.Nombre_Cte, Clientes.Apellido_Cte, Productos.Nombre_Prod, CreditoCte.Unidades, (Productos.Precio * CreditoCte.Unidades) AS SubTotal
FROM Clientes, CreditoCte, Productos WHERE Clientes.Id_Cte = CreditoCte.CteId 
AND CreditoCte.ProdId = Productos.Id_Producto AND (Productos.Precio * CreditoCte.Unidades) between 700 and 1000;

--Consulta #4
--Obtener el nombre y apellido de los clientes que compraron productos
--de la categoria "Zapatos"
SELECT Clientes.Nombre_Cte, Clientes.Apellido_Cte, Productos.Nombre_Prod, Productos.Precio, CreditoCte.Unidades
FROM Clientes, CreditoCte, Productos, Categorias WHERE Clientes.Id_Cte = CreditoCte.CteId AND CreditoCte.ProdId = Productos.Id_Producto 
AND Productos.CategoriaId = Categorias.Id_Categoria AND Categorias.Descripcion='Zapatos';

--Consulta #5
--Obtener la factura de los productos comprados por Clotilde en la fecha 2023-05-14
SELECT c.Nombre_Cte, c.Apellido_Cte, p.Nombre_Prod, p.Precio, cr.Fecha_Compra, cr.Unidades, (p.Precio*cr.Unidades) AS subtotal,
((p.Precio*cr.Unidades)*0.16) AS iva, ((p.Precio*cr.Unidades)+((p.Precio*cr.Unidades)*0.16)) AS total
FROM Clientes c INNER JOIN CreditoCte cr ON c.Id_Cte = cr.CteId INNER JOIN Productos p ON p.Id_Producto = cr.ProdId
WHERE cr.Fecha_Compra = '2023-05-14' AND c.Nombre_Cte = 'Clotilde';

SELECT c.Nombre_Cte, c.Apellido_Cte, cr.Fecha_Compra, SUM(cr.Unidades) AS Unidades, SUM(p.Precio*cr.Unidades) AS subtotal,
SUM((p.Precio*cr.Unidades)*0.16) AS iva, SUM((p.Precio*cr.Unidades)+((p.Precio*cr.Unidades)*0.16)) AS total
FROM Clientes c INNER JOIN CreditoCte cr ON c.Id_Cte = cr.CteId INNER JOIN Productos p ON p.Id_Producto = cr.ProdId
WHERE cr.Fecha_Compra = '2023-05-14' AND c.Nombre_Cte = 'Clotilde' GROUP BY c.Nombre_Cte, c.Apellido_Cte, cr.Fecha_Compra;