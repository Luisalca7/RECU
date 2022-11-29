-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Temps de generació: 28-11-2022 a les 17:29:41
-- Versió del servidor: 10.4.24-MariaDB
-- Versió de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `ada`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `alumnos`
--

CREATE TABLE `alumnos` (
  `idAlumno` int(11) NOT NULL,
  `alumno` text NOT NULL,
  `puntuacion` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `alumnos`
--

INSERT INTO `alumnos` (`idAlumno`, `alumno`, `puntuacion`) VALUES
(1, 'Toni', '10'),
(2, 'Toni', '7'),
(3, 'Carlos', '4'),
(4, 'Jose', '3'),
(5, 'juan', '8'),
(6, 'Pepe', '5');

-- --------------------------------------------------------

--
-- Estructura de la taula `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `genero` text NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `passwd` text NOT NULL,
  `id_pais` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `clientes`
--

INSERT INTO `clientes` (`id`, `genero`, `fname`, `lname`, `email`, `phone`, `passwd`, `id_pais`) VALUES
(1, '', 'elvisggggh', 'Wiliams', 'elvis@yo.es', '1291212', '121212', 2),
(30, '', 'Francisco josé', 'Wiliams', 'elvis@yo.es', '1291212', '121212', 1),
(31, '', 'Luis 18888', 'Wiliams', 'elvis@yo.es', '1291212', '121212', 1),
(32, '', 'Tonico', 'Wiliams', 'elvis@yo.es', '1291212', '121212', 1),
(33, '', 'Wili smith', 'elvis@yo.es', '1291212', '121212', 'ws', 1),
(35, '', 'Tonico aaaaaa', 'Wiliams', 'elvis@yo.es', '1291212', '121212', 1),
(36, '', 'Tonico', 'Wiliams ffffff', 'elvis@yo.es', '1291212', '121212', 1),
(37, '', 'Gabriela', 'Ferreira', '12912@dfsdsdf', '121212', '111', 1);

-- --------------------------------------------------------

--
-- Estructura de la taula `Compras`
--

CREATE TABLE `Compras` (
  `id` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `cantidad` decimal(11,2) NOT NULL,
  `Descripción` text NOT NULL,
  `Precio` decimal(11,2) NOT NULL,
  `Foto` text NOT NULL,
  `idProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `Compras`
--

INSERT INTO `Compras` (`id`, `idCliente`, `cantidad`, `Descripción`, `Precio`, `Foto`, `idProducto`) VALUES
(1, 1, '2.00', 'Cocacola', '2.00', 'imgs/cocacola.png', 1),
(4, 1, '1.00', 'Bravas', '10.00', 'imgs/bravas.png', 0),
(5, 1, '1.00', 'Cafe', '1.10', 'imgs/cafe.png', 0),
(6, 30, '1.00', 'Bocata pernil', '10.00', 'imgs/bocata.png', 2),
(7, 30, '1.00', 'Cerveza', '2.00', 'imgs/cerveza.png', 0),
(8, 30, '1.00', 'Cremaet', '2.00', 'imgs/cafe.png', 0);

-- --------------------------------------------------------

--
-- Estructura de la taula `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `paises`
--

INSERT INTO `paises` (`id`, `nombre`) VALUES
(1, 'España'),
(2, 'Francia'),
(3, 'India');

-- --------------------------------------------------------

--
-- Estructura de la taula `Productos`
--

CREATE TABLE `Productos` (
  `id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Foto` text NOT NULL,
  `Precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Bolcament de dades per a la taula `Productos`
--

INSERT INTO `Productos` (`id`, `Nombre`, `Foto`, `Precio`) VALUES
(1, 'Cocacola', 'imgs/cocacola.png', '2.00'),
(2, 'Bravas', 'imgs/bravas.png', '10.00'),
(3, 'Cafe', 'imgs/cafe.png', '1.10'),
(4, 'Bocata pernil', 'imgs/bocata.png', '10.00');

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`idAlumno`),
  ADD KEY `idAlumno` (`idAlumno`);

--
-- Índexs per a la taula `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `Compras`
--
ALTER TABLE `Compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índexs per a la taula `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `Productos`
--
ALTER TABLE `Productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `idAlumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la taula `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT per la taula `Compras`
--
ALTER TABLE `Compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la taula `Productos`
--
ALTER TABLE `Productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
