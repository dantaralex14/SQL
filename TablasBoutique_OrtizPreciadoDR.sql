CREATE DATABASE Boutique;

USE Boutique;

CREATE TABLE Empleados(
    Id_Emp VARCHAR(8) PRIMARY KEY not null,
    Nombre_Emp VARCHAR(30) not null,
    Apellido_Emp VARCHAR(30) not null,
    Direccion_Emp TEXT,
    Tel_Emp BIGINT not null
);

CREATE TABLE Clientes(
    Id_Cte VARCHAR(8) PRIMARY KEY not null,
    Nombre_Cte VARCHAR(30) not null,
    Apellido_Cte VARCHAR(30) not null,
    Direccion_Cte TEXT,
    Tel_Cte BIGINT not null
);

CREATE TABLE Categorias(
    Id_Categoria INT PRIMARY KEY not null,
    Descripcion VARCHAR(30) not null
);

CREATE TABLE Productos(
    Id_Producto VARCHAR(8) PRIMARY KEY not null,
    Nombre_Prod VARCHAR(30) not null,
    CategoriaId INT not null,
    Color VARCHAR(20) not null,
    Talla VARCHAR(8) not null,
    Precio MONEY not null

    CONSTRAINT fk_Categorias FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id_Categoria)
);

CREATE TABLE Proveedores(
    Id_Proveedor VARCHAR(8) PRIMARY KEY not null,
    Nombre VARCHAR(30) not null,
    Direccion TEXT,
    Correo VARCHAR(30) not null,
    Tel_Prov BIGINT not null
);

CREATE TABLE CreditoCte(
    CteId VARCHAR(8) not null,
    ProdId VARCHAR(8) not null,
    Cant_Debe MONEY not null,
    Fecha_Compra DATE,
    Unidades INT not null,
    EmpId VARCHAR(8) not null

    CONSTRAINT fk_Clientes FOREIGN KEY (CteId) REFERENCES Clientes(Id_Cte),
    CONSTRAINT fk_Productos FOREIGN KEY (ProdId) REFERENCES Productos(Id_Producto),
	CONSTRAINT fk_Empleados FOREIGN KEY (EmpId) REFERENCES Empleados(Id_Emp)
);

CREATE TABLE ProductoProveedor(
    ProdId VARCHAR(8) PRIMARY KEY not null,
    ProvId VARCHAR(8) not null,
    Cant INT not null

    CONSTRAINT fk_Producto FOREIGN KEY(ProdId) REFERENCES Productos(Id_Producto),
    CONSTRAINT fk_Proveedores FOREIGN KEY(ProvId) REFERENCES Proveedores(Id_Proveedor)
);
DROP TABLE Proveedores;