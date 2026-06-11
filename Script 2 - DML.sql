use restaurante;

insert into categoria(id_categoria, nombre) values
    (1, 'Entradas'),
    (2, 'Platos Principales'),
    (3, 'Postres'),
    (4, 'Bebidas sin alcohol'),
    (5, 'Bebidas con alcohol');

insert into producto(id_producto, nombre, precio, stock, id_categoria) values
    (1, 'Empanada', 1400.00, 20, 1),
    (2, 'Tabla de fiambres', 22000.00, 10, 1),
    (3, 'Provoleta', 15000.00, 15, 1),
    (4, 'Bife de chorizo', 35000.00, 12, 2),
    (5, 'Milanesa napolitana', 28000.00, 18, 2),
    (6, 'Pasta del día', 17000.00, 8, 2),
    (7, 'Salmón grillado', 30000.00, 6, 2),
    (8, 'Tiramisú', 8100.00, 10, 3),
    (9, 'Flan casero', 6300.00, 12, 3),
    (10, 'Helado', 5000.00, 20, 3),
    (11, 'Agua mineral 500ml', 3600.00, 50, 4),
    (12, 'Gaseosa 500ml', 4150.00, 40, 4),
    (13, 'Jugo de naranja', 3500.00, 15, 4),
    (14, 'Cerveza Quilmes', 10900.00, 30, 5),
    (15, 'Vino', 20000.00, 25, 5),
    (16, 'Jarra de Fernet', 28000.00, 10, 5);

insert into mozo(id_mozo, nombre, apellido, estado) values
    (1, 'Ana', 'Ramírez',  'activo'),
    (2, 'Luis', 'Fernández','activo'),
    (3, 'Valentina', 'Gómez', 'activo'),
    (4, 'Ezequiel', 'Zeballos', 'activo');

insert into mesa(id_mesa, numero, capacidad) values
    (1, 1, 2),
    (2, 2, 4),
    (3, 3, 4),
    (4, 4, 6),
    (5, 5, 6),
    (6, 6, 4),
    (7, 7, 4),
    (8, 8, 8),
    (9, 9, 2),
    (10, 10, 10);

insert into pedido(id_pedido, id_mozo, fechaYHora, estado_pedido) values
    (1, 1, '2026-06-01 12:30:00', 'entregado'),
    (2, 1, '2026-06-01 20:15:00', 'entregado'),
    (3, 2, '2026-06-02 13:00:00', 'entregado'),
    (4, 3, '2026-06-02 13:10:00', 'entregado'),
    (5, 3, '2026-06-02 20:45:00', 'cancelado'),
    (6, 4, '2026-06-03 12:50:00', 'entregado'),
    (7, 1, '2026-06-03 13:05:00', 'en_preparacion'),
    (8, 2, '2026-06-04 20:00:00', 'entregado'),
    (9, 3, '2026-06-05 12:30:00', 'pendiente'),
    (10, 4, '2026-06-05 12:45:00', 'pendiente');

insert into pedido_mesa(id_pedido, id_mesa) values
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 4),
    (5, 4),
    (6, 6),
    (7, 7),
    (8, 2),
    (9, 10),
    (10, 6),
    (10, 8);

insert into detalle_pedido(id_pedido, id_producto, cantidad, precio_unitario) values
    (1, 1, 1, 1400.00),
    (1, 5, 2, 28000.00),
    (1, 12, 2, 4150.00),
    (2, 3, 1, 15000.00),
    (2, 4, 2, 35000.00),
    (2, 15, 2, 20000.00),
    (2, 9, 2, 6300.00),
    (3, 2, 1, 22000.00),
    (3, 6, 2, 17000.00),
    (3, 11, 2, 3600.00),
    (3, 8, 1, 8100.00),
    (4, 5, 3, 28000.00),
    (4, 7, 1, 30000.00),
    (4, 14, 4, 10900.00),
    (4, 10, 2, 5000.00),
    (6, 1, 2, 1400.00),
    (6, 4, 1, 35000.00),
    (6, 6, 1, 17000.00),
    (6, 15, 2, 20000.00),
    (7, 3, 1, 15000.00),
    (7, 5, 2, 28000.00),
    (7, 12, 2, 4150.00),
    (8, 2, 1, 22000.00),
    (8, 4, 2, 35000.00),
    (8, 7, 2, 30000.00),
    (8, 16, 1, 28000.00),
    (8, 8, 4, 8100.00),
    (9, 3, 1, 15000.00),
    (9, 13, 2, 3500.00),
    (10, 1, 4, 1400.00),
    (10, 2, 2, 22000.00),
    (10, 4, 4, 35000.00),
    (10, 5, 3, 28000.00),
    (10, 6, 2, 17000.00),
    (10, 14, 6, 10900.00),
    (10, 15, 4, 20000.00),
    (10, 10, 5, 5000.00);

update pedido set estado_pedido='en_preparacion' where id_pedido=10;

update mozo set estado='inactivo' where id_mozo=4;

update producto set precio=19000 where id_producto=15;

delete from detalle_pedido where id_detalle=1 and id_pedido in(select id_pedido from pedido where estado_pedido='pendiente');
delete from detalle_pedido where id_detalle=29 and id_pedido in(select id_pedido from pedido where estado_pedido='pendiente');