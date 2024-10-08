DROP DATABASE IF EXISTS Pollo;
CREATE DATABASE IF NOT EXISTS Pollo;
USE Pollo;

CREATE TABLE empleados (
    empleadoID INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    documento VARCHAR(20) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100),
    tiempo_completo BOOLEAN NOT NULL,
    anio_contratacion DATE NOT NULL
);


CREATE TABLE sedes (
    sedeID INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);


CREATE TABLE puestos (
    puestoID INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);


CREATE TABLE horarios (
    horarioID INT AUTO_INCREMENT PRIMARY KEY,
    empleadoID INT,
    sedeID INT,
    puestoID INT,
    horario_entrada TIME NOT NULL,
    horario_salida TIME NOT NULL,
    FOREIGN KEY (empleadoID) REFERENCES empleados(empleadoID),
    FOREIGN KEY (sedeID) REFERENCES sedes(sedeID),
    FOREIGN KEY (puestoID) REFERENCES puestos(puestoID),
    UNIQUE (empleadoID, sedeID, puestoID, horario_entrada, horario_salida)
);


CREATE TABLE salarios (
    salarioID INT AUTO_INCREMENT PRIMARY KEY,
    empleadoID INT,
    salario DECIMAL(10, 2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    FOREIGN KEY (empleadoID) REFERENCES empleados(empleadoID)
);


INSERT INTO empleados (empleadoID, nombre, edad, documento, telefono, email, tiempo_completo, anio_contratacion)
VALUES 
(1, 'Laura Ramírez', 24, '876543210', '312-777-1234', 'laura.ramirez@gmail.com', TRUE, '2024-05-20'),
(2, 'Pedro Sánchez', 30, '654321098', '310-555-6789', 'pedro.sanchez@hotmail.com', TRUE, '2024-06-12'),
(3, 'María Fernández', 26, '765432109', '313-888-5678', 'maria.fernandez@gmail.com', TRUE,  '2024-07-05'),
(4, 'Andrés Mendoza', 29, '543210987', '314-999-6789', 'andres.mendoza@hotmail.com', TRUE, '2024-08-18'),
(5, 'Carlos López', 32, '123456789', '315-777-8888', 'carlos.lopez@hotmail.com', TRUE,'2023-09-15'),
(6, 'Ana Torres', 28, '987654123', '316-999-0000', 'ana.torres@gmail.com', TRUE, '2022-12-20'),
(7, 'Diego Martínez', 31, '765432198', '317-111-2222', 'diego.martinez@empresa.com', TRUE,'2023-11-10'),
(8, 'Jorge Ramírez', 35, '654321987', '319-555-6666', 'jorge.ramirez@hotmail.com', TRUE,  '2023-04-15'),
(9, 'Laura Jiménez', 26, '321098765', '320-777-8888', 'laura.jimenez@gmail.com', FALSE, '2023-03-25'),
(10, 'Camilo Rodríguez', 30, '543219876', '321-999-1111', 'camilo.rodriguez@empresa.com', TRUE,  '2022-11-20'),
(11, 'Patricia Díaz', 33, '789654321', '322-333-2222', 'patricia.diaz@hotmail.com', TRUE, '2023-07-30'),
(12, 'Luis Herrera', 29, '876543218', '323-555-3333', 'luis.herrera@gmail.com', TRUE, '2023-06-25'),
(13, 'Valentina Pérez', 27, '098765432', '324-777-4444', 'valentina.perez@gmail.com', FALSE, '2023-01-05'),
(14, 'Gabriel Martínez', 40, '432198765', '325-111-5555', 'gabriel.martinez@empresa.com', TRUE,  '2023-02-18'),
(15, 'Isabel González', 24, '765432987', '326-333-6666', 'isabel.gonzalez@gmail.com', FALSE, '2023-09-01'),
(16, 'Mateo Castro', 28, '109876543', '327-555-7777', 'mateo.castro@gmail.com', FALSE, '2023-04-12'),
(17, 'Natalia Ramírez', 32, '654987321', '328-777-8888', 'natalia.ramirez@gmail.com', TRUE,'2023-10-10'),
(18, 'Felipe Sánchez', 29, '432109876', '329-999-0000', 'felipe.sanchez@gmail.com', TRUE, '2023-05-05'),
(19, 'Mónica Rodríguez', 30, '543210987', '330-111-2222', 'monica.rodriguez@empresa.com', TRUE,  '2023-11-30'),
(20, 'Camila López', 26, '098765432', '331-777-8888', 'camila.lopez@gmail.com', FALSE, '2023-07-18'),
(21, 'Juan Martínez', 34, '987654321', '332-111-2222', 'juan.martinez@empresa.com', FALSE,'2024-01-10'),
(22, 'Diana Castillo', 25, '876543210', '333-555-6666', 'diana.castillo@gmail.com', FALSE, '2024-02-15'),
(23, 'Valentina Vargas', 27, '321098765', '338-555-6666', 'valentina.vargas@gmail.com', FALSE,  '2024-07-25'),
(24, 'Andrés García', 29, '109876543', '339-777-8888', 'andres.garcia@gmail.com', FALSE, '2024-08-01'),
(25, 'Martín Romero', 30, '987654321', '321-555-1111', 'martin.romero@gmail.com', TRUE, '2024-01-15'),
(26, 'Camila Vargas', 27, '654321987', '322-666-2222', 'camila.vargas@gmail.com', TRUE,'2024-02-10'),
(27, 'Felipe González', 31, '543210876', '323-777-3333', 'felipe.gonzalez@empresa.com', TRUE, '2024-03-05'),
(28, 'Valeria Díaz', 29, '432109876', '324-888-4444', 'valeria.diaz@gmail.com', FALSE, '2024-04-20'),
(29, 'Ricardo Pérez', 35, '109876543', '325-999-5555', 'ricardo.perez@gmail.com', TRUE, '2024-05-15'),
(30, 'Laura Gómez', 28, '987654321', '326-111-6666', 'laura.gomez@gmail.com', TRUE,'2024-06-25'),
(31, 'Andrés Torres', 32, '654321098', '327-222-7777', 'andres.torres@gmail.com', TRUE,  '2024-07-10'),
(32, 'Isabel Martínez', 26, '765432109', '328-333-8888', 'isabel.martinez@empresa.com', TRUE,  '2024-08-15'),
(33, 'José Ramírez', 30, '876543210', '329-444-9999', 'jose.ramirez@gmail.com', TRUE, '2024-09-20'),
(34, 'Catalina López', 28, '543210987', '330-555-1111', 'catalina.lopez@gmail.com', FALSE,  '2024-10-10'),
(35, 'Samuel Díaz', 31, '654987321', '331-666-2222', 'samuel.diaz@gmail.com', TRUE,  '2024-11-01'),
(36, 'Daniela Gómez', 27, '432198765', '332-777-3333', 'daniela.gomez@gmail.com', TRUE,  '2024-12-05'),
(37, 'Tomás Ruiz', 33, '098765432', '333-888-4444', 'tomas.ruiz@gmail.com', TRUE, '2025-01-15'),
(38, 'Felipe Mendoza', 29, '876543219', '334-999-5555', 'felipe.mendoza@gmail.com', TRUE, '2025-02-10'),
(39, 'Julián López', 34, '543210876', '335-111-6666', 'julian.lopez@gmail.com', TRUE,  '2025-03-01'),
(40, 'Natalia Ruiz', 28, '654321987', '336-222-7777', 'natalia.ruiz@gmail.com', TRUE,  '2025-04-15'),
(41, 'Mauro Castro', 31, '765432198', '337-333-8888', 'mauro.castro@gmail.com', TRUE, '2025-05-20'),
(42, 'Sofía Martínez', 27, '876543210', '338-444-9999', 'sofia.martinez@gmail.com', TRUE,  '2025-06-15'),
(43, 'Andrés Ruiz', 32, '987654321', '339-555-0000', 'andres.ruiz@gmail.com', TRUE, '2025-07-10'),
(44, 'Juliana Díaz', 29, '543210987', '340-666-1111', 'juliana.diaz@gmail.com', FALSE, '2025-08-01'),
(45, 'Gabriel Pérez', 35, '432198765', '341-777-2222', 'gabriel.perez@gmail.com', FALSE,  '2025-09-15');


INSERT INTO sedes (nombre) VALUES 
('Sede Norte'), 
('Sede Sur');


INSERT INTO puestos (nombre) VALUES 
('Mesera'),
('Cocinero'),
('Cajera'),
('Gerente'),
('Supervisora'),
('Analista'),
('Contador'),
('Director'),
('Vendedora'),
('Asistente'),
('Desarrollador');


INSERT INTO horarios (empleadoID, sedeID, puestoID, horario_entrada, horario_salida) VALUES 

(1, 1, 1, '01:00', '12:00'),
(1, 1, 1, '06:00', '12:00'),
(2, 2, 2, '09:30', '18:30'),
(2, 2, 2, '14:00', '23:00'),
(3, 2, 3, '10:30', '19:30'),
(3, 2, 3, '15:00', '23:00'),
(4, 2, 2, '08:30', '17:30'),
(4, 2, 2, '15:00', '23:00'),
(5, 1, 4, '08:00', '17:00'),
(5, 1, 4, '12:00', '20:00'),
(6, 2, 5, '09:00', '18:00'),
(6, 2, 5, '14:00', '23:00'),
(7, 2, 6, '08:30', '17:30'),
(7, 2, 6, '13:00', '21:00'),
(8, 2, 7, '08:00', '17:00'),
(8, 2, 7, '12:00', '20:00'),
(9, 2, 8, '13:00', '17:00'),
(10, 1, 5, '08:30', '17:30'),
(10, 1, 5, '13:00', '21:00'),
(11, 2, 4, '08:00', '17:00'),
(11, 2, 4, '12:00', '20:00'),
(12, 1, 9, '09:00', '18:00'),
(12, 1, 9, '13:00', '21:00'),
(13, 2, 8, '14:00', '18:00'),
(14, 1, 8, '07:30', '16:30'),
(14, 1, 8, '12:00', '20:00'),
(15, 2, 3, '11:00', '15:00'),
(16, 1, 2, '09:30', '13:30'),
(17, 2, 5, '08:00', '17:00'),
(17, 2, 5, '14:00', '23:00'),
(18, 1, 9, '08:30', '17:30'),
(18, 1, 9, '13:00', '21:00'),
(19, 2, 6, '09:00', '18:00'),
(19, 2, 6, '13:00', '21:00'),
(20, 1, 10, '09:00', '13:00'),
(21, 2, 11, '09:00', '13:00'),
(22, 1, 3, '10:00', '14:00'),
(23, 1, 3, '10:30', '14:30'),
(24, 2, 2, '09:00', '13:00'),
(25, 2, 6, '08:00', '17:00'),
(25, 2, 6, '13:00', '21:00'),
(26, 1, 10, '10:00', '19:00'),
(26, 1, 10, '13:00', '21:00'),
(27, 2, 5, '08:30', '17:30'),
(27, 2, 5, '13:00', '21:00'),
(28, 1, 3, '09:00', '13:00'),
(29, 2, 4, '07:30', '16:30'),
(29, 2, 4, '12:00', '20:00'),
(30, 1, 8, '13:00', '19:00'),
(30, 1, 8, '17:00', '21:00'),
(31, 2, 7, '08:00', '17:00'),
(31, 2, 7, '13:00', '21:00'),
(32, 1, 3, '10:00', '14:00'),
(32, 1, 3, '14:00', '18:00'),
(33, 2, 6, '09:00', '18:00'),
(33, 2, 6, '14:00', '21:00'),
(34, 1, 2, '08:30', '13:30'),
(35, 2, 5, '08:00', '17:00'),
(35, 2, 5, '13:00', '21:00'),
(36, 1, 10, '10:00', '19:00'),
(36, 1, 10, '13:00', '21:00'),
(37, 2, 6, '09:00', '18:00'),
(37, 2, 6, '14:00', '21:00'),
(38, 1, 3, '10:00', '14:00'),
(38, 1, 3, '14:00', '18:00'),
(39, 2, 5, '08:00', '17:00'),
(39, 2, 5, '13:00', '21:00'),
(40, 1, 8, '13:00', '19:00'),
(40, 1, 8, '17:00', '21:00'),
(41, 2, 4, '07:30', '16:30'),
(41, 2, 4, '13:00', '21:00'),
(42, 1, 10, '09:00', '18:00'),
(42, 1, 10, '13:00', '21:00'),
(43, 2, 7, '08:00', '17:00'),
(43, 2, 7, '13:00', '21:00'),
(44, 1, 3, '10:00', '14:00'),
(45, 2, 7, '08:00', '17:00');



INSERT INTO salarios (empleadoID, salario, fecha_inicio) VALUES 
(1, 1300000.00, '2024-05-20'),
(2, 1500000.00, '2024-06-12'),
(3, 1300000.00, '2024-07-05'),
(4, 1500000.00, '2024-08-18'),
(5, 3000000.00, '2023-09-15'),
(6, 3000000.00, '2022-12-20'),
(7, 2000000.00, '2023-11-10'),
(8, 2000000.00, '2023-04-15'),
(9, 1300000.00, '2023-03-25'),
(10, 3000000.00, '2022-11-20'),
(11, 1300000.00, '2023-07-30'),
(12, 1300000.00, '2023-06-25'),
(13, 700000.00, '2023-01-05'),
(14, 2600000.00, '2023-02-18'),
(15, 1300000.00, '2023-09-01'),
(16, 1800000.00, '2023-04-12'),
(17, 2100000.00, '2023-10-10'),
(18, 1750000.00, '2023-05-05'),
(19, 1900000.00, '2023-11-30'),
(20, 1300000.00, '2023-07-18'),
(21, 1300000.00, '2024-01-10'),
(22, 1300000.00, '2024-02-15'),
(23, 1300000.00, '2024-07-25'),
(24, 1500000.00, '2024-08-01'),
(25, 1500000.00, '2024-01-15'),
(26, 1300000.00, '2024-02-10'),
(27, 2000000.00, '2024-03-05'),
(28, 1750000.00, '2024-04-20'),
(29, 2200000.00, '2024-05-15'),
(30, 1400000.00, '2024-06-25'),
(31, 1600000.00, '2024-07-10'),
(32, 1350000.00, '2024-08-15'),
(33, 1500000.00, '2024-09-20'),
(34, 1450000.00, '2024-10-10'),
(35, 1550000.00, '2024-11-01'),
(36, 1300000.00, '2024-12-05'),
(37, 1700000.00, '2025-01-15'),
(38, 1600000.00, '2025-02-10'),
(39, 1750000.00, '2025-03-01'),
(40, 1400000.00, '2025-04-15'),
(41, 1800000.00, '2025-05-20'),
(42, 1300000.00, '2025-06-15'),
(43, 1500000.00, '2025-07-10'),
(44, 1400000.00, '2025-08-01'),
(45, 2000000.00, '2025-09-15');