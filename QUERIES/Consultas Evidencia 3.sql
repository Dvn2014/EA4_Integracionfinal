-- Consultas Evidencia 3

-- Consultas realizadas en la transformación de datos. 

--Transformación de datos de ubicación 

SELECT du.id_ubicacion,
       UPPER(du.estado) AS estado,
       UPPER(du.ciudad) AS ciudad,
       UPPER(du.pais) AS pais,
       du.codigo_postal
FROM DESTINO_UBICACION du;

-- Transformación de datos de producto
SELECT dp.ID_producto,
       dp.nombre,
       dp.Desc_Categoria,
       COALESCE(NULLIF(dp.descripcion, ''), 'Sin Descripción') AS descripcion
FROM DESTINO_PRODUCTO dp;

--   Transformación  tabla de hechos

SELECT dv.idHechos , dv.ID_producto, dt.id_tiempo,
dv.ID_cliente ,dv.ID_Ubicacion ,dv.cantidad, dv.Total 
FROM DESTINO_VENTAS dv 
INNER JOIN DimTiempo dt ON dv.fecha_pedido = dt.fecha_pedido