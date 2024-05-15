CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2),
    descripcion VARCHAR(200),
    stock INT
);

CREATE TABLE Pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_pedido VARCHAR(50),
    cantidad_pedido INT,
    precio_total DECIMAL(10, 2),
    Cliente_id INT,
    Productos_id INT,
    FOREIGN KEY (Cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (Productos_id) REFERENCES Productos(id)
);

CREATE TABLE Historial (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    fecha_historial DATE,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id)
);

CREATE TABLE Empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    telefono VARCHAR(50)
);

CREATE TABLE Sucursales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ciudad VARCHAR(50),
    telefono VARCHAR(50),
    id_encargado INT,
    FOREIGN KEY (id_encargado) REFERENCES Empleados(id)
);
