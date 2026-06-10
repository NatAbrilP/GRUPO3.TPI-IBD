USE restaurante;

INSERT INTO categoria (id_categoria, nombre) VALUES 
(1, 'Entradas'),
(2, 'Platos principales'),
(3, 'Bebidas'),
(4, 'Postres');

INSERT INTO producto (id_producto, nombre, precio, stock, id_categoria) VALUES 
(1, 'Empanada', 1500.00, 120, 1),
(2, 'Berenjenas al escaveche', 900.00, 100, 1),
(3, 'Milanesa con papas', 8500.00, 45, 2),
(4, 'Bife de chorizo', 12000.00, 30, 2),
(5, 'Gaseosa 500ml', 2000.00, 80, 3),
(6, 'Cerveza 500ml', 3500.00, 60, 3),
(7, 'Flan con dulce de leche', 2500.00, 25, 4),
(8, 'Tortilla de avena proteica', 1300.00, 25, 4);

INSERT INTO mozo (id_mozo, nombre, apellido, estado) VALUES 
(1, 'Ivan', 'Robledo', 'activo'),
(2, 'Sofia', 'Castro', 'inactivo'),
(3, 'Javier', 'Vescio', 'activo'),
(4, 'Marcelo', 'Wolf', 'activo');

INSERT INTO mesa (id_mesa, numero, capacidad) VALUES 
(1, 1, 2),
(2, 2, 2),
(3, 3, 4),
(4, 4, 6);

INSERT INTO pedido (id_pedido, id_mozo, fechaYHora, estado_pedido) VALUES 
(1, 1, '2026-06-01 12:30:00', 'entregado'),
(2, 3, '2026-06-01 13:15:00', 'entregado'),
(3, 1, '2026-06-02 21:00:00', 'entregado'),
(4, 4, '2026-06-02 22:30:00', 'cancelado'),
(5, 4, '2026-06-03 21:45:00', 'en_preparacion');

INSERT INTO pedido_mesa (id_pedido, id_mesa) VALUES 
(1, 1),
(1, 2), 
(2, 3),
(3, 4),
(4, 1),
(5, 2);

INSERT INTO detalle_pedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES 
(1, 3, 2, 8500.00),
(1, 5, 2, 2000.00),
(1, 7, 2, 2500.00),
(2, 4, 1, 12000.00),
(2, 6, 2, 3500.00),
(3, 1, 4, 1500.00),
(3, 2, 1, 900.00),
(3, 4, 2, 12000.00),
(3, 6, 4, 3500.00),
(4, 8, 1, 1300.00),  
(4, 5, 1, 2000.00),  
(5, 3, 1, 8500.00),
(5, 5, 1, 2000.00);