-- =========================================================
-- Insertar_Filas_Nuevas.sql
-- Correr DURANTE la clase, despues de la primera ejecucion del pipeline,
-- para demostrar la carga incremental (watermark) de la Practica 2.
-- =========================================================
INSERT INTO dbo.Ventas
(VentaID, Fecha, Cliente, Producto, Categoria, Cantidad, PrecioUnitario, Total, Region, Vendedor, FechaModificacion)
VALUES
(1061, '2026-07-02', N'Ferreteria Central', N'Impresora Laser', N'Tecnologia', 1, 1150.00, 1150.00, N'Piura', N'Carlos Vega', SYSUTCDATETIME()),
(1062, '2026-07-02', N'Comercial Andina SAC', N'Silla Ergonomica', N'Mobiliario', 2, 560.00, 1120.00, N'Chiclayo', N'Jose Ramirez', SYSUTCDATETIME()),
(1063, '2026-07-02', N'Textiles Del Valle', N'Archivador Metalico', N'Mobiliario', 3, 320.00, 960.00, N'Arequipa', N'Jose Ramirez', SYSUTCDATETIME()),
(1064, '2026-07-02', N'Ferreteria Central', N'Laptop 14''', N'Tecnologia', 4, 3200.00, 12800.00, N'Lima', N'Jose Ramirez', SYSUTCDATETIME()),
(1065, '2026-07-02', N'Distribuidora Norte EIRL', N'Archivador Metalico', N'Mobiliario', 1, 320.00, 320.00, N'Piura', N'Lucia Mendoza', SYSUTCDATETIME()),
(1066, '2026-07-02', N'Servicios Pacifico SAC', N'Monitor 24''', N'Tecnologia', 5, 780.00, 3900.00, N'Trujillo', N'Ana Flores', SYSUTCDATETIME()),
(1067, '2026-07-02', N'Grupo Sureste SA', N'Archivador Metalico', N'Mobiliario', 2, 320.00, 640.00, N'Chiclayo', N'Ana Flores', SYSUTCDATETIME()),
(1068, '2026-07-02', N'Constructora Los Andes', N'Router WiFi6', N'Tecnologia', 3, 260.00, 780.00, N'Cusco', N'Jose Ramirez', SYSUTCDATETIME());
