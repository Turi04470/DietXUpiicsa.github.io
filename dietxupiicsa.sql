-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2023 a las 04:25:43
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dietxupiicsa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login usuario`
--

CREATE TABLE `login usuario` (
  `ID` int(11) NOT NULL COMMENT 'Este es el id incremental que se le asignara al usuario como llave primaria',
  `nombre` varchar(50) NOT NULL COMMENT 'Nombre del usuario',
  `password` varchar(12) NOT NULL COMMENT 'Contraseña del usuario',
  `email` varchar(50) NOT NULL COMMENT 'Email del usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `ID_plan` int(11) NOT NULL COMMENT 'Id del plan como llave primaria',
  `nombre_plan` varchar(30) NOT NULL COMMENT 'Nombre del plan',
  `descripcion` varchar(300) NOT NULL COMMENT 'Descripcion del plan',
  `follow` tinyint(1) NOT NULL COMMENT 'follow para el plan',
  `like` tinyint(1) NOT NULL COMMENT 'like para el plan',
  `visible` tinyint(1) NOT NULL COMMENT 'visible para el plan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login usuario`
--
ALTER TABLE `login usuario`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`ID_plan`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login usuario`
--
ALTER TABLE `login usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Este es el id incremental que se le asignara al usuario como llave primaria';

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `ID_plan` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id del plan como llave primaria';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
