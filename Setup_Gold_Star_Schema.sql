-- =========================================================
-- Setup_Gold_Star_Schema.sql
-- Sesion 2 - Practica 3: construir el modelo estrella (Gold)
-- a partir de silver.ventas_consolidado.
--
-- Ejecutar como Spark SQL: en un notebook de Fabric, pegar
-- cada bloque en una celda %%sql, o envolver en spark.sql("""..." """)
-- desde una celda PySpark.
-- =========================================================

%%sql
--Dimesion Producto
CREATE OR REPLACE TABLE gold.dim_producto AS
SELECT
    ROW_NUMBER() OVER (ORDER BY Producto) AS ProductoID,
    Producto,
    Categoria
FROM (
    SELECT DISTINCT Producto, Categoria
    FROM lh_silver.dbo.ventas_consolidado
);


--Dimension Cliente
CREATE OR REPLACE TABLE gold.dim_cliente AS
SELECT
    ROW_NUMBER() OVER (ORDER BY Cliente) AS ClienteID,
    Cliente
FROM (
    SELECT DISTINCT Cliente
    FROM lh_silver.dbo.ventas_consolidado
);

--Dim Region

CREATE OR REPLACE TABLE gold.dim_region AS
SELECT
    ROW_NUMBER() OVER (ORDER BY Region) AS RegionID,
    Region
FROM (
    SELECT DISTINCT Region
    FROM lh_silver.dbo.ventas_consolidado
);

-- 4) Dimension Fecha (version simple; la version reutilizable
--    via Dataflow Gen2 se construye en la Sesion 3, Practica 1)
CREATE OR REPLACE TABLE gold.dim_fecha AS
SELECT
    Fecha,
    YEAR(Fecha)        AS Anio,
    MONTH(Fecha)        AS Mes,
    QUARTER(Fecha)      AS Trimestre,
    DATE_FORMAT(Fecha, 'MMMM') AS NombreMes
FROM (
    SELECT DISTINCT Fecha
    FROM silver.ventas_consolidado
);

-- 5) Tabla de hechos: fact_ventas
CREATE OR REPLACE TABLE gold.fact_ventas AS
SELECT
    v.VentaID,
    p.ProductoID,
    c.ClienteID,
    r.RegionID,
    v.Fecha,
    v.Cantidad,
    v.PrecioUnitario,
    v.Total,
    v.Vendedor
FROM silver.ventas_consolidado v
JOIN gold.dim_producto p ON p.Producto = v.Producto
JOIN gold.dim_cliente  c ON c.Cliente  = v.Cliente
JOIN gold.dim_region   r ON r.Region   = v.Region;

-- Verificacion rapida
SELECT COUNT(*) AS filas_fact FROM gold.fact_ventas;
SELECT COUNT(*) AS filas_dim_producto FROM gold.dim_producto;
SELECT COUNT(*) AS filas_dim_cliente FROM gold.dim_cliente;
SELECT COUNT(*) AS filas_dim_region FROM gold.dim_region;
SELECT COUNT(*) AS filas_dim_fecha FROM gold.dim_fecha;

-- Siguiente paso (fuera de SQL): crear un Semantic model sobre estas
-- 5 tablas en modo Direct Lake y agregar la medida:
--   Total Ventas = SUM(fact_ventas[Total])
