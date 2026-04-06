Ver comportamiento de precio y demanda
SELECT producto, fecha, precio, cantidad
FROM ventas
ORDER BY producto, fecha;

Ingreso por producto
SELECT producto, SUM(precio * cantidad) AS ingreso_total
FROM ventas
GROUP BY producto
ORDER BY ingreso_total DESC;

Ganancia por producto
SELECT producto, SUM((precio - costo) * cantidad) AS ganancia_total
FROM ventas
GROUP BY producto
ORDER BY ganancia_total DESC;