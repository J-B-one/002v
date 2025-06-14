create database rrhh;
create user "jefe"@"%" identified by "123";
grant all privileges on rrhh.* to "jefe"@"%";
flush privileges;

use rrhh;

create table comuna (

   id int primary key,

  nombre varchar(30) not null

);

create table empleado (

rut varchar(15) primary key,
  nombre varchar(30) not null,
  telefono varchar(30) not null,
  correo varchar(30) not null,
  id_comuna int not null,
  foreign key (id_comuna) references comuna(id) 

);



insert into comuna values (1, "Cerrillos");

insert into comuna values (2, "Maipu");

insert into comuna values (3, "Lo Espejo");

insert into comuna values (4, "Talagante");

insert into comuna values (5, "Padre Hurtado");

insert into comuna values (6, "Melipilla");

insert into empleado values ("1","Carlos","123","carlos@gmail.com",1);

insert into empleado values ("2","Juan","365","juan@gmail.com",1);

insert into empleado values ("3","Daniela","652","daniela@gmail.com",1);

insert into empleado values ("4","Luis","333","luis@gmail.com",2);

insert into empleado values ("5","Karina","444","karina@gmail.com",2);

insert into empleado values ("6","Cecilia","667","cecilia@gmail.com",6);