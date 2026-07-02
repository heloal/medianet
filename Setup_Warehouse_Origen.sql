-- =========================================================
-- Setup_Warehouse_Origen.sql
-- Crea la tabla "origen" que el Data Pipeline (Copy Data) leera
-- en la Practica 2, simulando un SQL Server externo.
-- Ejecutar en el SQL analytics endpoint del Warehouse WH_Origen_Ventas
-- =========================================================

IF OBJECT_ID('dbo.Ventas', 'U') IS NOT NULL
    DROP TABLE dbo.Ventas;

CREATE TABLE dbo.Ventas (
    VentaID         INT           NOT NULL,
    Fecha           DATE          NOT NULL,
    Cliente         VARCHAR(100) NOT NULL,
    Producto        VARCHAR(100) NOT NULL,
    Categoria       VARCHAR(50)  NOT NULL,
    Cantidad        INT           NOT NULL,
    PrecioUnitario  DECIMAL(10,2) NOT NULL,
    Total           DECIMAL(12,2) NOT NULL,
    Region          VARCHAR(50)  NOT NULL,
    Vendedor        VARCHAR(100) NOT NULL,
    FechaModificacion DATE   NOT NULL 
);

INSERT INTO dbo.Ventas
(VentaID, Fecha, Cliente, Producto, Categoria, Cantidad, PrecioUnitario, Total, Region, Vendedor, FechaModificacion)
VALUES
(1001, '2026-04-30', N'Grupo Sureste SA', N'Silla Ergonomica', N'Mobiliario', 1, 560.00, 560.00, N'Arequipa', N'Ana Flores', SYSUTCDATETIME()),
(1002, '2026-05-01', N'Grupo Sureste SA', N'Proyector HD', N'Tecnologia', 4, 2400.00, 9600.00, N'Piura', N'Lucia Mendoza', SYSUTCDATETIME()),
(1003, '2026-05-02', N'Corporacion Altiplano', N'Archivador Metalico', N'Mobiliario', 7, 320.00, 2240.00, N'Trujillo', N'Lucia Mendoza', SYSUTCDATETIME()),
(1004, '2026-05-04', N'Inversiones Costa Azul', N'Silla Ergonomica', N'Mobiliario', 4, 560.00, 2240.00, N'Chiclayo', N'Ana Flores', SYSUTCDATETIME()),
(1005, '2026-05-05', N'Inversiones Costa Azul', N'Router WiFi6', N'Tecnologia', 7, 260.00, 1820.00, N'Arequipa', N'Carlos Vega', SYSUTCDATETIME()),
(1006, '2026-05-07', N'Constructora Los Andes', N'Camara Web HD', N'Tecnologia', 2, 130.00, 260.00, N'Piura', N'Ana Flores', SYSUTCDATETIME()),
(1007, '2026-05-08', N'Distribuidora Norte EIRL', N'Proyector HD', N'Tecnologia', 2, 2400.00, 4800.00, N'Trujillo', N'Lucia Mendoza', SYSUTCDATETIME()),
(1008, '2026-05-09', N'Corporacion Altiplano', N'Camara Web HD', N'Tecnologia', 6, 130.00, 780.00, N'Lima', N'Maria Torres', SYSUTCDATETIME()),
(1009, '2026-05-11', N'Servicios Pacifico SAC', N'Proyector HD', N'Tecnologia', 2, 2400.00, 4800.00, N'Lima', N'Ana Flores', SYSUTCDATETIME()),
(1010, '2026-05-12', N'Servicios Pacifico SAC', N'Proyector HD', N'Tecnologia', 5, 2400.00, 12000.00, N'Cusco', N'Ana Flores', SYSUTCDATETIME()),
(1011, '2026-05-14', N'Comercial Andina SAC', N'Camara Web HD', N'Tecnologia', 8, 130.00, 1040.00, N'Chiclayo', N'Lucia Mendoza', SYSUTCDATETIME()),
(1012, '2026-05-15', N'Servicios Pacifico SAC', N'Laptop 14''', N'Tecnologia', 4, 3200.00, 12800.00, N'Trujillo', N'Maria Torres', SYSUTCDATETIME()),
(1013, '2026-05-16', N'Import Export Lima SAC', N'Camara Web HD', N'Tecnologia', 3, 130.00, 390.00, N'Piura', N'Lucia Mendoza', SYSUTCDATETIME()),
(1014, '2026-05-18', N'Ferreteria Central', N'Camara Web HD', N'Tecnologia', 2, 130.00, 260.00, N'Lima', N'Carlos Vega', SYSUTCDATETIME()),
(1015, '2026-05-19', N'Servicios Pacifico SAC', N'Escritorio L', N'Mobiliario', 7, 890.00, 6230.00, N'Cusco', N'Carlos Vega', SYSUTCDATETIME()),
(1016, '2026-05-21', N'Inversiones Costa Azul', N'Archivador Metalico', N'Mobiliario', 3, 320.00, 960.00, N'Cusco', N'Carlos Vega', SYSUTCDATETIME()),
(1017, '2026-05-22', N'Inversiones Costa Azul', N'Escritorio L', N'Mobiliario', 3, 890.00, 2670.00, N'Chiclayo', N'Jose Ramirez', SYSUTCDATETIME()),
(1018, '2026-05-23', N'Servicios Pacifico SAC', N'Router WiFi6', N'Tecnologia', 5, 260.00, 1300.00, N'Cusco', N'Ana Flores', SYSUTCDATETIME()),
(1019, '2026-05-25', N'Grupo Sureste SA', N'Silla Ergonomica', N'Mobiliario', 3, 560.00, 1680.00, N'Lima', N'Maria Torres', SYSUTCDATETIME()),
(1020, '2026-05-26', N'Ferreteria Central', N'Mouse Inalambrico', N'Tecnologia', 4, 45.00, 180.00, N'Chiclayo', N'Lucia Mendoza', SYSUTCDATETIME()),
(1021, '2026-05-28', N'Comercial Andina SAC', N'Proyector HD', N'Tecnologia', 8, 2400.00, 19200.00, N'Cusco', N'Ana Flores', SYSUTCDATETIME()),
(1022, '2026-05-29', N'Textiles Del Valle', N'Monitor 24''', N'Tecnologia', 1, 780.00, 780.00, N'Arequipa', N'Lucia Mendoza', SYSUTCDATETIME()),
(1023, '2026-05-30', N'Servicios Pacifico SAC', N'Impresora Laser', N'Tecnologia', 6, 1150.00, 6900.00, N'Piura', N'Jose Ramirez', SYSUTCDATETIME()),
(1024, '2026-06-01', N'Ferreteria Central', N'Escritorio L', N'Mobiliario', 1, 890.00, 890.00, N'Lima', N'Lucia Mendoza', SYSUTCDATETIME()),
(1025, '2026-06-02', N'Distribuidora Norte EIRL', N'Camara Web HD', N'Tecnologia', 3, 130.00, 390.00, N'Chiclayo', N'Ana Flores', SYSUTCDATETIME()),
(1026, '2026-06-04', N'Inversiones Costa Azul', N'Camara Web HD', N'Tecnologia', 2, 130.00, 260.00, N'Chiclayo', N'Lucia Mendoza', SYSUTCDATETIME()),
(1027, '2026-06-05', N'Ferreteria Central', N'Archivador Metalico', N'Mobiliario', 7, 320.00, 2240.00, N'Piura', N'Jose Ramirez', SYSUTCDATETIME()),
(1028, '2026-06-06', N'Distribuidora Norte EIRL', N'Archivador Metalico', N'Mobiliario', 3, 320.00, 960.00, N'Lima', N'Jose Ramirez', SYSUTCDATETIME()),
(1029, '2026-06-08', N'Ferreteria Central', N'Camara Web HD', N'Tecnologia', 3, 130.00, 390.00, N'Piura', N'Ana Flores', SYSUTCDATETIME()),
(1030, '2026-06-09', N'Ferreteria Central', N'Archivador Metalico', N'Mobiliario', 6, 320.00, 1920.00, N'Piura', N'Maria Torres', SYSUTCDATETIME()),
(1031, '2026-06-11', N'Inversiones Costa Azul', N'Mouse Inalambrico', N'Tecnologia', 1, 45.00, 45.00, N'Lima', N'Ana Flores', SYSUTCDATETIME()),
(1032, '2026-06-12', N'Servicios Pacifico SAC', N'Monitor 24''', N'Tecnologia', 2, 780.00, 1560.00, N'Cusco', N'Lucia Mendoza', SYSUTCDATETIME()),
(1033, '2026-06-13', N'Comercial Andina SAC', N'Laptop 14''', N'Tecnologia', 5, 3200.00, 16000.00, N'Trujillo', N'Maria Torres', SYSUTCDATETIME()),
(1034, '2026-06-15', N'Corporacion Altiplano', N'Proyector HD', N'Tecnologia', 4, 2400.00, 9600.00, N'Piura', N'Lucia Mendoza', SYSUTCDATETIME()),
(1035, '2026-06-16', N'Ferreteria Central', N'Monitor 24''', N'Tecnologia', 6, 780.00, 4680.00, N'Arequipa', N'Lucia Mendoza', SYSUTCDATETIME()),
(1036, '2026-06-18', N'Ferreteria Central', N'Silla Ergonomica', N'Mobiliario', 5, 560.00, 2800.00, N'Cusco', N'Maria Torres', SYSUTCDATETIME()),
(1037, '2026-06-19', N'Distribuidora Norte EIRL', N'Proyector HD', N'Tecnologia', 7, 2400.00, 16800.00, N'Trujillo', N'Ana Flores', SYSUTCDATETIME()),
(1038, '2026-06-20', N'Ferreteria Central', N'Impresora Laser', N'Tecnologia', 1, 1150.00, 1150.00, N'Chiclayo', N'Maria Torres', SYSUTCDATETIME()),
(1039, '2026-06-22', N'Constructora Los Andes', N'Proyector HD', N'Tecnologia', 4, 2400.00, 9600.00, N'Lima', N'Ana Flores', SYSUTCDATETIME()),
(1040, '2026-06-23', N'Constructora Los Andes', N'Router WiFi6', N'Tecnologia', 5, 260.00, 1300.00, N'Chiclayo', N'Maria Torres', SYSUTCDATETIME()),
(1041, '2026-06-25', N'Comercial Andina SAC', N'Silla Ergonomica', N'Mobiliario', 8, 560.00, 4480.00, N'Lima', N'Jose Ramirez', SYSUTCDATETIME()),
(1042, '2026-06-26', N'Constructora Los Andes', N'Archivador Metalico', N'Mobiliario', 4, 320.00, 1280.00, N'Arequipa', N'Ana Flores', SYSUTCDATETIME()),
(1043, '2026-06-27', N'Distribuidora Norte EIRL', N'Escritorio L', N'Mobiliario', 2, 890.00, 1780.00, N'Arequipa', N'Ana Flores', SYSUTCDATETIME()),
(1044, '2026-06-29', N'Corporacion Altiplano', N'Escritorio L', N'Mobiliario', 4, 890.00, 3560.00, N'Cusco', N'Ana Flores', SYSUTCDATETIME()),
(1045, '2026-06-30', N'Grupo Sureste SA', N'Laptop 14''', N'Tecnologia', 8, 3200.00, 25600.00, N'Cusco', N'Maria Torres', SYSUTCDATETIME()),
(1046, '2026-07-01', N'Distribuidora Norte EIRL', N'Proyector HD', N'Tecnologia', 7, 2400.00, 16800.00, N'Chiclayo', N'Jose Ramirez', SYSUTCDATETIME()),
(1047, '2026-07-03', N'Corporacion Altiplano', N'Silla Ergonomica', N'Mobiliario', 4, 560.00, 2240.00, N'Lima', N'Maria Torres', SYSUTCDATETIME()),
(1048, '2026-07-04', N'Import Export Lima SAC', N'Monitor 24''', N'Tecnologia', 7, 780.00, 5460.00, N'Chiclayo', N'Carlos Vega', SYSUTCDATETIME()),
(1049, '2026-07-06', N'Textiles Del Valle', N'Camara Web HD', N'Tecnologia', 8, 130.00, 1040.00, N'Chiclayo', N'Carlos Vega', SYSUTCDATETIME()),
(1050, '2026-07-07', N'Distribuidora Norte EIRL', N'Laptop 14''', N'Tecnologia', 1, 3200.00, 3200.00, N'Piura', N'Lucia Mendoza', SYSUTCDATETIME()),
(1051, '2026-07-09', N'Distribuidora Norte EIRL', N'Monitor 24''', N'Tecnologia', 7, 780.00, 5460.00, N'Arequipa', N'Lucia Mendoza', SYSUTCDATETIME()),
(1052, '2026-07-10', N'Ferreteria Central', N'Archivador Metalico', N'Mobiliario', 4, 320.00, 1280.00, N'Piura', N'Jose Ramirez', SYSUTCDATETIME()),
(1053, '2026-07-11', N'Comercial Andina SAC', N'Monitor 24''', N'Tecnologia', 7, 780.00, 5460.00, N'Cusco', N'Carlos Vega', SYSUTCDATETIME()),
(1054, '2026-07-13', N'Ferreteria Central', N'Mouse Inalambrico', N'Tecnologia', 3, 45.00, 135.00, N'Piura', N'Lucia Mendoza', SYSUTCDATETIME()),
(1055, '2026-07-14', N'Constructora Los Andes', N'Proyector HD', N'Tecnologia', 4, 2400.00, 9600.00, N'Arequipa', N'Ana Flores', SYSUTCDATETIME()),
(1056, '2026-07-16', N'Corporacion Altiplano', N'Escritorio L', N'Mobiliario', 3, 890.00, 2670.00, N'Trujillo', N'Lucia Mendoza', SYSUTCDATETIME()),
(1057, '2026-07-17', N'Ferreteria Central', N'Laptop 14''', N'Tecnologia', 6, 3200.00, 19200.00, N'Lima', N'Carlos Vega', SYSUTCDATETIME()),
(1058, '2026-07-18', N'Distribuidora Norte EIRL', N'Camara Web HD', N'Tecnologia', 5, 130.00, 650.00, N'Piura', N'Lucia Mendoza', SYSUTCDATETIME()),
(1059, '2026-07-20', N'Constructora Los Andes', N'Archivador Metalico', N'Mobiliario', 6, 320.00, 1920.00, N'Piura', N'Lucia Mendoza', SYSUTCDATETIME()),
(1060, '2026-07-21', N'Comercial Andina SAC', N'Monitor 24''', N'Tecnologia', 1, 780.00, 780.00, N'Trujillo', N'Ana Flores', SYSUTCDATETIME());

-- Verificacion rapida
SELECT COUNT(*) AS filas_cargadas FROM dbo.Ventas;
