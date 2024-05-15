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
-- Inserts para la tabla Clientes
INSERT INTO Clientes (nombre, telefono, email) VALUES ('Pedro Pérez', '56987654321', 'pedro@example.com');
INSERT INTO Clientes (nombre, telefono, email) VALUES ('María González', '56998765432', 'maria@example.com');
INSERT INTO Clientes (nombre, telefono, email) VALUES ('Diego Rojas', '56976543210', 'diego@example.com');

-- Inserts para la tabla Productos
INSERT INTO Productos (nombre, precio, descripcion, stock) VALUES ('Notebook', 699990, 'Pantalla de 14", 8GB RAM, 256GB SSD', 15);
INSERT INTO Productos (nombre, precio, descripcion, stock) VALUES ('Smartphone', 299990, 'Pantalla de 6.5", 64GB almacenamiento, batería de 4000mAh', 25);
INSERT INTO Productos (nombre, precio, descripcion, stock) VALUES ('Audífonos', 39990, 'Audífonos inalámbricos con cancelación de ruido', 40);

-- Inserts para la tabla Pedido
INSERT INTO Pedido (nombre_pedido, cantidad_pedido, precio_total, Cliente_id, Productos_id) VALUES ('Pedido 001', 1, 699990, 1, 1);
INSERT INTO Pedido (nombre_pedido, cantidad_pedido, precio_total, Cliente_id, Productos_id) VALUES ('Pedido 002', 2, 599980, 2, 2);
INSERT INTO Pedido (nombre_pedido, cantidad_pedido, precio_total, Cliente_id, Productos_id) VALUES ('Pedido 003', 3, 119970, 3, 3);

-- Inserts para la tabla Historial
INSERT INTO Historial (id_pedido, fecha_historial) VALUES (1, '2024-05-10');
INSERT INTO Historial (id_pedido, fecha_historial) VALUES (2, '2024-05-11');
INSERT INTO Historial (id_pedido, fecha_historial) VALUES (3, '2024-05-12');

-- Inserts para la tabla Empleados
INSERT INTO Empleados (nombre, apellido, telefono) VALUES ('Martina', 'Soto', '56987651234');
INSERT INTO Empleados (nombre, apellido, telefono) VALUES ('Javier', 'Vargas', '56976544321');
INSERT INTO Empleados (nombre, apellido, telefono) VALUES ('Catalina', 'López', '56965432109');

-- Inserts para la tabla Sucursales
INSERT INTO Sucursales (ciudad, telefono, id_encargado) VALUES ('Santiago', '56222223333', 1);
INSERT INTO Sucursales (ciudad, telefono, id_encargado) VALUES ('Valparaíso', '56324445555', 2);
INSERT INTO Sucursales (ciudad, telefono, id_encargado) VALUES ('Concepción', '56416667777', 3);
