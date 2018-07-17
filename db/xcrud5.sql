-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2018 a las 06:33:35
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `xcrud5`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualiza_usuario` (IN `valor` INT, `Nombre` VARCHAR(50), `Apellidos` VARCHAR(100), `Usuario` VARCHAR(50), `Password` VARCHAR(50))  begin
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
			update usuarios set Id=valor, Nombre=Nombre,Apellidos=Apellidos,Usuario=Usuario,Password=Password where Id=valor;
			select concat('Los Datos se Actualizaron Correctamente') as mensaje;
		
	end;
	if resultado = 1 then
		select concat('Error:  No Se Pudo Actualizar La Informacion ¡Intenta de Nuevo!') as mensaje;
	end if;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_buscar_usuarios` (IN `valor` INT)  begin
	select * from usuarios where Id=valor;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_usuario` (IN `valor` INT)  begin
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
			delete from usuarios where Id=valor;
			select concat('Los Datos se Eliminaron Correctamente') as mensaje;
		
	end;
	if resultado = 1 then
		select concat('Error:  No Se Pudo Eliminar La Informacion ¡Intenta de Nuevo!') as mensaje;
	end if;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_existe_usuarios` (IN `valor` VARCHAR(50))  begin
	select * from usuarios where Usuario=valor;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inserta_usuario` (`Nombre` VARCHAR(50), `Apellidos` VARCHAR(100), `Usuario` VARCHAR(50), `Password` VARCHAR(50))  begin
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
			insert into usuarios (Nombre,Apellidos,Usuario,Password) values (Nombre,Apellidos,Usuario,Password);
			select concat('El Usuario <b>',Usuario,'</b> Fue registrado Correctamente') as mensaje;
		
	end;
	if resultado = 1 then
		select concat('Error: El Usuario <b>',Usuario,'</b> No Se Registro ¡Intenta de Nuevo!') as mensaje;
	end if;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_usuarios` ()  begin
	select * from usuarios order by Id;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Apellidos` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Usuario` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Password` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nombre`, `Apellidos`, `Usuario`, `Password`) VALUES
(7, 'MANUEL', 'CORTES CRISANTO', 'MANUEL', '123'),
(8, 'Juan', 'Perez Perez', 'juan', '123'),
(9, 'JUANJ', 'PEREZ PEREZJ', 'PEREZJKJHH', 'JK'),
(11, 'RODRIGO', 'SANCHEZ JUAREZ', 'RODRIGO', 'JK'),
(12, 'PRUEBA', 'MIS DATOS', 'PRUEBA', 'PRUEBA'),
(13, 'MANUEL', 'CORTES CRISANTO', 'MANUEL9', '12334'),
(14, 'SS', 'SS', 'SS', 'SS');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
