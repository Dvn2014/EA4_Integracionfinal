-- Consultas


-- Dimensión Ubicación

SELECT  c.ID_cliente AS id_ubicacion,p.estado,
c.ciudad ,c.pais ,codigo_postal 
FROM cliente c 
INNER JOIN pedido p ON c.ID_cliente = p.ID_cliente 

SELECT  * from cliente c 
-- Dimensión Productos

SELECT p.ID_producto, p.nombre,
cp.Desc_Categoria  ,p.descripcion 
FROM producto p 
INNER JOIN Categoria_producto cp ON p.Categoria = cp.Id_Categoria 

-- Dimensión Clientes

SELECT c.ID_cliente , c.nombre_cliente,
c.linea_direccion1 AS direccion ,c.telefono 
FROM cliente c 

-- Dimensión Tiempos   

SELECT DISTINCT  p.fecha_pedido  FROM pedido p 

