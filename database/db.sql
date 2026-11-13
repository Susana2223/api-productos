CREATE DATABASE tiendaperu;
use tiendaperu;

create table if not exists productos
(
	id int unsigned not null auto_increment primary key,
    marca varchar(100) not null,
    descripcion  varchar(200) not null,
    precio decimal(10,2) not null,
    stock int unsigned not null default 0,
    create_at datetime not null default now(),
    update_at datetime null
)engine = INNODB;

insert into productos
	(marca, descripcion, precio, stock)
    values
    ('Samsung', 'TV 55', 2500, 10),
    ('LG', 'Lavadora', 1200, 3),
    ('Sony', 'Playstation 5', 3200, 2);
    
select * from productos;


create table if not exists clientes
(
	id int unsigned not null auto_increment primary key,
    apellidos varchar(100) not null,
    nombres varchar(100) not null,
    telefono char(9) not null,
    direccion varchar(200) not null,
    email varchar(150) not null,
    create_at datetime not null default now(),
    updated_at datetime null,
    constraint fk_email_clientes unique (email)
)engine = INNODB;

insert into clientes (apellidos, nombres, telefono, direccion, email) values
('Ccahuana Mamani', 'Jhon Brayan', '966214873', 'Mz. B Lt. 7, AA.HH. Santa Rosa, Ica', 'jhon.ccahuana92@gmail.com'),
('De la Cruz Salazar', 'Milagros', '941087352', 'Calle Los Pinos 218, Urb. San Isidro, Chincha', 'milagros_delacruz@hotmail.com'),
('Paucar Yupanqui', 'Wilder Hernán', '987310645', 'Jr. Bolognesi 1043, Huancayo', 'wilder.paucar@outlook.com');

select * from clientes;


create table if not exists proveedores
(
	id int unsigned not null auto_increment primary key,
    razonsocial varchar(150) not null,
    contacto varchar(100) not null,
    ruc char(11) not null,
    direccion varchar(200) not null,
    create_at datetime not null default now(),
    updated_at datetime null,
    constraint fk_ruc_proveedores unique (ruc)
)engine = INNODB;

insert into proveedores (razonsocial, contacto, ruc, direccion) values
('Comercial Huaytará E.I.R.L.', 'Ketty Alvarado', '20608431275', 'Av. Los Incas 560, Ica'),
('Inversiones Dos Palmas S.R.L.', 'Ricardo Bendezú', '20541876293', 'Jr. Lima 322, Pisco'),
('Servicios Electro Peruanos S.A.C.', 'Dayana Gutiérrez', '20495318067', 'Av. Colonial 1875, Callao');

select * from proveedores;

