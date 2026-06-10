USE restaurante;
-- Consulta 1
SELECT
m.id_mozo,
m.nombre,
m.apellido,
COUNT(DISTINCT p.id_pedido) as cantidad_pedidos,
SUM(dp.cantidad * dp.precio_unitario) as total_facturado
FROM mozo m
JOIN pedido p on m.id_mozo = p.id_mozo
JOIN detalle_pedido dp on p.id_pedido = dp.id_pedido
WHERE m.estado = 'activo'
AND p.estado_pedido = 'entregado'
GROUP BY m.id_mozo, m.nombre, m.apellido
ORDER BY total_facturado DESC;

-- Consulta 2
SELECT
c.nombre as categoria,
pr.nombre as producto,
pr.stock as stock_actual,
SUM(dp.cantidad) as unidades_vendidas,
SUM(dp.cantidad * dp.precio_unitario) as ingresos_generados
FROM categoria c
JOIN producto pr on c.id_categoria = pr.id_categoria
JOIN detalle_pedido dp on pr.id_producto = dp.id_producto
JOIN pedido p on dp.id_pedido = p.id_pedido
WHERE p.estado_pedido != 'cancelado'
GROUP BY c.id_categoria, c.nombre, pr.id_producto, pr.nombre, pr.stock
ORDER BY unidades_vendidas DESC;

-- Consulta 3
SELECT
p.id_pedido,
p.fechaYHora,
COUNT(DISTINCT pm.id_mesa) as cantidad_mesas_unidas,
SUM(dp.cantidad * dp.precio_unitario) as total_factura
FROM pedido p
JOIN pedido_mesa pm on p.id_pedido = pm.id_pedido
JOIN detalle_pedido dp on p.id_pedido = dp.id_pedido
WHERE p.estado_pedido != 'cancelado'
GROUP BY p.id_pedido, p.fechaYHora
HAVING cantidad_mesas_unidas > 1
ORDER BY total_factura DESC;