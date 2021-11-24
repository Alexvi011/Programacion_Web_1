/*Si la base de datos existe eliminala*/
DROP SCHEMA IF EXISTS `fes_ico`;

/*Creacion de la base de datos*/

CREATE SCHEMA IF NOT EXISTS `fes_ico` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;

/*Usamos la base de datos*/
USE `fes_ico`;

/*Creacion de una tabla*/
CREATE TABLE `alumno`(
    `nombre_usuario` text not null,
    `carrera` text not null,
    `no_cuenta` int (10) not null,
    `direccion` text not null,
    `telefono` varchar (8) not null,
    `email` text not null,
    `password` varchar (8) not null,
    `fecha_registro` datetime not null default current_timestamp,
    `permisos` int(11) not null default `1`

)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

/*Agregar registros*/
INSERT INTO `alumno`(`nombre_usuario`,`carrera`,`no_cuenta`,`direccion`,`telefono`,`email`,`password`,`fecha_registro`,`permisos`)values
('Alejandro Vite','ICO','317031522','Zumpimito 23','5614285315','alexvi.spdr.11@gmail.com','1235678','Hola','2021-11-04 6:57:18'),
('Erik Nájera','ICO','317233252','CD.Azteca 3rd','5511446853','eriknajera317@aragon.unam.mx','123654','Hol2','2020-01-15 12:07:45'),
('Angel Pérez', 'ICO','315203446', 'Guerrero 378 G 128', '55 76 45 74 76', 'correo_ejemplo@gmail.com', '123456','Hola3','2021-06-18 7:24:49');

/*Definir llave primaria*/
ALTER TABLE `alumno`
    ADD PRIMARY KEY (`no_cuenta`);
    