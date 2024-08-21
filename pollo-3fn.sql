use pollo; 

CREATE TABLE empleados_3FN (
    empleadoID INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,                 
    edad INT NOT NULL,                            
    documento VARCHAR(20) NOT NULL,               
    telefono VARCHAR(15),                       
    email VARCHAR(100),                          
    tiempo_completo BOOLEAN NOT NULL,             
    salario DECIMAL(10, 2) NOT NULL,              
    anio_contratacion DATE NOT NULL,           
    sedeID INT,
    puestoID INT
);
INSERT INTO empleados_3FN (nombre, edad, documento, telefono, email, tiempo_completo, salario, anio_contratacion, sedeID, puestoID)
VALUES 
('Laura Ramírez', 24, '876543210', '312-777-1234', 'laura.ramirez@gmail.com', TRUE, 1300000.00, '2024-05-20', 2, 1),
('Pedro Sánchez', 30, '654321098', '310-555-6789', 'pedro.sanchez@hotmail.com', TRUE, 1500000.00, '2024-06-12',1, 2),
('María Fernández', 26, '765432109', '313-888-5678', 'maria.fernandez@gmail.com', TRUE, 1300000.00, '2024-07-05', 1, 3),
('Andrés Mendoza', 29, '543210987', '314-999-6789', 'andres.mendoza@hotmail.com', TRUE, 1500000.00, '2024-08-18', 1, 2),
('Carlos López', 32, '123456789', '315-777-8888', 'carlos.lopez@hotmail.com', TRUE, 3000000.00, '2023-09-15', 2, 4 ),
('Ana Torres', 28, '987654123', '316-999-0000', 'ana.torres@gmail.com', TRUE, 3000000.00, '2022-12-20', 1, 6),
('Diego Martínez', 31, '765432198', '317-111-2222', 'diego.martinez@empresa.com', TRUE, 2000000.00, '2023-11-10', 1, 7),
('Jorge Ramírez', 35, '654321987', '319-555-6666', 'jorge.ramirez@hotmail.com', TRUE, 2000000.00, '2023-04-15', 1, 8),
('Laura Jiménez', 26, '321098765', '320-777-8888', 'laura.jimenez@gmail.com', FALSE, 1300000.00, '2023-03-25', 1, 12),
('Camilo Rodríguez', 30, '543219876', '321-999-1111', 'camilo.rodriguez@empresa.com', TRUE, 3000000.00, '2022-11-20', 2, 6),
('Patricia Díaz', 33, '789654321', '322-333-2222', 'patricia.diaz@hotmail.com', TRUE, 1300000.00, '2023-07-30', 1, 4),
('Luis Herrera', 29, '876543218', '323-555-3333', 'luis.herrera@gmail.com', TRUE, 1300000.00, '2023-06-25', 2, 5),
('Valentina Pérez', 27, '098765432', '324-777-4444', 'valentina.perez@gmail.com', FALSE, 700000.00, '2023-01-05', 1, 12),
('Gabriel Martínez', 40, '432198765', '325-111-5555', 'gabriel.martinez@empresa.com', TRUE, 2600000.00, '2023-02-	8', 2, 11),
('Isabel González', 24, '765432987', '326-333-6666', 'isabel.gonzalez@gmail.com', FALSE, 1300000.00, '2023-09-01', 1, 3),
('Mateo Castro', 28, '109876543', '327-555-7777', 'mateo.castro@gmail.com', FALSE, 1800000.00, '2023-04-12', 2, 2),
('Natalia Ramírez', 32, '654987321', '328-777-8888', 'natalia.ramirez@gmail.com', TRUE, 2100000.00, '2023-10-10', 1, 6),
('Felipe Sánchez', 29, '432109876', '329-999-0000', 'felipe.sanchez@gmail.com', TRUE, 1750000.00, '2023-05-05', 2, 5),
('Mónica Rodríguez', 30, '543210987', '330-111-2222', 'monica.rodriguez@empresa.com', TRUE, 1900000.00, '2023-11-30', 1, 7),
('Camila López', 26, '098765432', '331-777-8888', 'camila.lopez@gmail.com', FALSE, 1300000.00, '2023-07-18', 3, 9),
('Juan Martínez', 34, '987654321', '332-111-2222', 'juan.martinez@empresa.com', FALSE, 1300000.00, '2024-01-10', 1, 10),
('Diana Castillo', 25, '876543210', '333-555-6666', 'diana.castillo@gmail.com', FALSE, 1300000.00, '2024-02-15', 2, 3),
('Valentina Vargas', 27, '321098765', '338-555-6666', 'valentina.vargas@gmail.com', FALSE, 1300000.00, '2024-07-25', 2, 3),
('Andrés García', 29, '109876543', '339-777-8888', 'andres.garcia@gmail.com', FALSE, 1500000.00, '2024-08-01', 1, 2),
('Martín Romero', 30, '987654321', '321-555-1111', 'martin.romero@gmail.com', TRUE, 1500000.00, '2024-01-15', 1, 7),
('Camila Vargas', 27, '654321987', '322-666-2222', 'camila.vargas@gmail.com', TRUE, 1300000.00, '2024-02-10', 2, 9),
('Felipe González', 31, '543210876', '323-777-3333', 'felipe.gonzalez@empresa.com', TRUE, 2000000.00, '2024-03-05', 1, 6),
('Valeria Díaz', 29, '432109876', '324-888-4444', 'valeria.diaz@gmail.com', FALSE, 1750000.00, '2024-04-20', 2, 3),
('Ricardo Pérez', 35, '109876543', '325-999-5555', 'ricardo.perez@gmail.com', TRUE, 2200000.00, '2024-05-15', 1, 4),
('Laura Gómez', 28, '987654321', '326-111-6666', 'laura.gomez@gmail.com', TRUE, 1400000.00, '2024-06-25', 2, 12),
('Andrés Torres', 32, '654321098', '327-222-7777', 'andres.torres@gmail.com', TRUE, 1600000.00, '2024-07-10', 1, 8),
('Isabel Martínez', 26, '765432109', '328-333-8888', 'isabel.martinez@empresa.com', TRUE, 1350000.00, '2024-08-15', 2, 3),
('José Ramírez', 30, '876543210', '329-444-9999', 'jose.ramirez@gmail.com', TRUE, 1500000.00, '2024-09-20', 1, 7),
('Catalina López', 28, '543210987', '330-555-1111', 'catalina.lopez@gmail.com', FALSE, 1450000.00, '2024-10-10', 2, 2),
('Samuel Díaz', 31, '654987321', '331-666-2222', 'samuel.diaz@gmail.com', TRUE, 1550000.00, '2024-11-01', 1, 6),
('Daniela Gómez', 27, '432198765', '332-777-3333', 'daniela.gomez@gmail.com', TRUE, 1300000.00, '2024-12-05', 2, 9),
('Tomás Ruiz', 33, '098765432', '333-888-4444', 'tomas.ruiz@gmail.com', TRUE, 1700000.00, '2025-01-15', 1, 7),
('Felipe Mendoza', 29, '876543219', '334-999-5555', 'felipe.mendoza@gmail.com', TRUE, 1600000.00, '2025-02-10', 2, 3),
('Julián López', 34, '543210876', '335-111-6666', 'julian.lopez@gmail.com', TRUE, 1750000.00, '2025-03-01', 1, 6),
('Natalia Ruiz', 28, '654321987', '336-222-7777', 'natalia.ruiz@gmail.com', TRUE, 1400000.00, '2025-04-15', 2, 12),
('Mauro Castro', 31, '765432198', '337-333-8888', 'mauro.castro@gmail.com', TRUE, 1800000.00, '2025-05-20',1, 4),
('Sofía Martínez', 27, '876543210', '338-444-9999', 'sofia.martinez@gmail.com', TRUE, 1300000.00, '2025-06-15', 2, 9),
('Andrés Ruiz', 32, '987654321', '339-555-0000', 'andres.ruiz@gmail.com', TRUE, 1500000.00, '2025-07-10', 1, 8),
('Juliana Díaz', 29, '543210987', '340-666-1111', 'juliana.diaz@gmail.com', FALSE, 1400000.00, '2025-08-01', 2, 3),
('Gabriel Pérez', 35, '432198765', '341-777-2222', 'gabriel.perez@gmail.com', FALSE, 2000000.00, '2025-09-15', 1, 8);
CREATE TABLE sedes (
    sedeID INT PRIMARY KEY,
    sede VARCHAR(50) NOT NULL
);

INSERT INTO sedes (sedeID, sede) values
("Sede Norte"),
("Sede Sur");

create table salario(
salarioID Int primary key, 
salario varchar(50) not null
);

insert into salario(salarioID, salario) values
()



CREATE TABLE puestos (
    puestoID INT PRIMARY KEY,
    puesto VARCHAR(50) NOT NULL
);

INSERT INTO puestos (puesto) VALUES
('Mesera'),
('Cocinero'),
('Cajera'),
('Gerente'),
('Operario'),
('Supervisora'),
('Analista'),
('Contador'),
('Vendedora'),
('Desarrollador'),
('Director'),
('Asistente');
