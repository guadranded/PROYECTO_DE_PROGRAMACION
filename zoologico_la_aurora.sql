create database zoologico_la_aurora;
use zoologico_la_aurora;

create table dueño (
id int primary key auto_increment not null,
nombres varchar(45) not null,
apellidos varchar(45) not null,
sexo varchar(20) not null,
correo varchar(45) not null
);

create table dimension (
id int primary key auto_increment not null,
perimetro decimal not null,
area decimal not null
);

create table zoologico (
codigo_id int primary key auto_increment not null,
no_de_animales int not null,
direccion varchar(50) not null,
dueño_id int,
foreign key (dueño_id) references dueño (id),
dimension_id varchar(10),
foreign key (dimension_id) references dimension (id)
);

create table habitat(
id int primary key auto_increment not null,
nombre varchar (50) not null,
descripcion varchar (45) not null,
zoologico_id int,
foreign key (zoologico_id) references habitat (id)
);

create table clima (
    id int primary key,
    tipo_de_clima varchar(45),
    habitat_id int,
    foreign key (habitat_id) references habitat (id)
);


create table vegetacion (
    id int primary key,
    tipo_de_vegetacion varchar(45),
    habitat_id int,
   foreign key (habitat_id) references habitat (id)
);

create table sexo (
id int primary key auto_increment not null,
sexo_del_animal varchar (45) not null
);
create table especie (
id int primary key auto_increment not null,
nombre_de_especie varchar (45) not null
);

create table dieta (
id int primary key auto_increment not null,
tipo_de_dieta varchar (45)
);

create table animal (
id int primary key auto_increment not null,
nombre_comun varchar (50),
nombre_cientifico varchar (45),
edad varchar (20),
estatura varchar (45),
peso varchar (45),
descripcion varchar (100),
sexo_id int,
especie_id int,
habitat_id int,
foreign key (sexo_id) references sexo (id),
foreign key (especie_id) references especie (id),
foreign key (habitat_id) references habitat (id)
);

create table animal_has_dieta (
dieta_id int,
animal_id int,
foreign key (dieta_id) references dieta (id),
foreign key (animal_id) references animal (id)
);

