-- Para crear las tablas del curso se usaron los siguientes comandos.
create table if not exists dim_clientes (
	id_cliente integer,
	codigo_cliente varchar(10),
	nombre varchar(50),
	apellido varchar(50),
	nombre_completo varchar(100),
	numero_telefono_celular varchar(20),
	numero_telefono_casa varchar(20),
	numero_telefono_trabajo varchar(20),
	ciudad_casa varchar(50),
	fecha_carga timestamp,
	fecha_actualizacion timestamp,
	primary key (id_cliente)
);

create table if not exists dim_productos(
	id_producto integer,
	codigo_producto varchar(20),
	nombre varchar(50),
	color varchar(50),
	tamanio varchar(50),
	categoria varchar(50),
	fecha_carga timestamp,
	fecha_actualizacion timestamp,
	primary key (id_producto)
);

create table if not exists dim_territorios(
	id_territorio integer,
	codigo_territorio varchar(20),
	nombre varchar(50),
	continente varchar(50),
	fecha_carga timestamp,
	fecha_actualizacion timestamp,
	primary key (id_territorio)
);

create table if not exists dim_vendedores (
	id_vendedor integer,
	codigo_vendedor varchar(20),
	identificacion varchar(20),
	nombre varchar(50),
	apellido varchar(50),
	nombre_completo varchar(50),
	rol varchar(50),
	fecha_nacimiento date,
	genero varchar(10),
	ind_activo boolean,
	fecha_inicio date,
	fecha_fin date,
	version integer,
	fecha_carga timestamp,
	primary key (id_vendedor)
);

create table if not exists fact_ventas (
	id_venta integer not null,
	codigo_venta_detalle varchar(10) not null,
	codigo_venta_encabezado varchar(10) not null,
	id_fecha integer null,
	id_territorio integer null,
	id_cliente integer null,
	id_vendedor integer null,
	id_producto integer null,
	cantidad integer null,
	valor numeric(18, 2) null,
	descuento numeric(18,2) null,
	fecha_carga timestamp null,
	fecha_actualizacion timestamp null,
	primary key (id_venta)
);

create table if not exists dim_tiempo (
	id_fecha int not null,
	fecha date not null,
	dia smallint not null,
	mes smallint not null,
	anio smallint not null,
	dia_semana smallint not null,
	dia_anio smallint not null,
	primary key (id_fecha)
);
