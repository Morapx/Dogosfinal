-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2022 a las 06:41:01
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adopcion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dogos_controller`
--

CREATE TABLE `dogos_controller` (
  `id` int(11) NOT NULL,
  `id_tipo_raza` int(11) NOT NULL,
  `schnauzer` varchar(32) DEFAULT NULL,
  `pitbull` varchar(32) DEFAULT NULL,
  `pomeranian` varchar(32) DEFAULT NULL,
  `chihuahua` varchar(32) DEFAULT NULL,
  `shih_tzu` varchar(32) DEFAULT NULL,
  `colordogo` varchar(32) NOT NULL,
  `tamañodogo` varchar(32) NOT NULL,
  `espaciodogo` smallint(2) NOT NULL DEFAULT 1,
  `dogoscasa` tinyint(1) NOT NULL DEFAULT 0,
  `dogo_adulto_cachorro` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_raza`
--

CREATE TABLE `tipo_raza` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dogos_controller`
--
ALTER TABLE `dogos_controller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_raza` (`id_tipo_raza`);

--
-- Indices de la tabla `tipo_raza`
--
ALTER TABLE `tipo_raza`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dogos_controller`
--
ALTER TABLE `dogos_controller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_raza`
--
ALTER TABLE `tipo_raza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
