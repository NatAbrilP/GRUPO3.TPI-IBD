drop schema if exists restaurante;

create schema restaurante;

use restaurante;

create table categoria(
	id_categoria int auto_increment primary key,
    nombre varchar(50) not null
);

create table producto(
	id_producto int auto_increment primary key,
    nombre varchar(50) not null,
    precio decimal(10,2) not null,
    stock int not null,
    id_categoria int not null,
    foreign key(id_categoria) references categoria(id_categoria)
);

create table mozo(
	id_mozo int auto_increment primary key,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    estado enum('activo', 'inactivo') not null
);

create table mesa(
	id_mesa int auto_increment primary key,
    numero int not null,
    capacidad int not null
);

create table pedido(
	id_pedido int auto_increment primary key,
    id_mozo int not null,
    fechaYHora datetime not null,
    estado_pedido enum('pendiente', 'en_preparacion', 'entregado', 'cancelado') not null,
    foreign key(id_mozo) references mozo(id_mozo) 
);

create table pedido_mesa(
    id_pedido int not null,
    id_mesa int not null,
    primary key (id_pedido, id_mesa),
    foreign key(id_pedido) references pedido(id_pedido),
    foreign key(id_mesa) references mesa(id_mesa)
);

create table detalle_pedido(
	id_detalle int auto_increment primary key,
    id_pedido int not null,
    id_producto int not null,
    cantidad int not null,
    precio_unitario decimal(10,2) not null,
    foreign key(id_pedido) references pedido(id_pedido),
    foreign key(id_producto) references producto(id_producto)
);