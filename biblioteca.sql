-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2023 a las 03:29:22
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
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `Codigo_libro` tinyint(5) NOT NULL,
  `Nombre_libro` text NOT NULL,
  `Editorial` text NOT NULL,
  `Autor` text NOT NULL,
  `Genero` text NOT NULL,
  `Pais_autor` text NOT NULL,
  `Num_paginas` int(4) NOT NULL,
  `Año_edicion` year(4) NOT NULL,
  `Precio_libro` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`Codigo_libro`, `Nombre_libro`, `Editorial`, `Autor`, `Genero`, `Pais_autor`, `Num_paginas`, `Año_edicion`, `Precio_libro`) VALUES
(1, 'Don Quijote de La Mancha I', 'Anaya', 'Miguel de Cervantes', 'Caballeresco', 'España', 517, '1991', 2750),
(2, 'Don Quijote de La Mancha', 'Anaya', 'Miguel de Cervantes', 'Caballeresco', 'España', 611, '1991', 3125),
(3, 'Historias de Nueva Orleans', 'Alfaguara', 'William Faulkner', 'Novela', 'Estados Unidos', 186, '1985', 675),
(4, 'El principito', 'Andina', 'Antoine Saint-Exupery', 'Aventura', 'Francia', 120, '1996', 750),
(5, 'El principe', 'S.M.', 'Maquiavelo', 'Politico', 'Alemania', 825, '1995', 1750),
(6, 'Diplomacia', 'S.M.', 'Henry Kissinger', 'Politico', 'Alemania', 825, '1997', 1750),
(7, 'Los windsor', 'Plaza & Jamés', 'Kitty Kelley', 'Biografias', 'Gran Bretaña', 620, '1998', 1130),
(8, 'El Ultimo Emperador', 'Caralt', 'Pu-Yi', 'Autobiografias', 'China', 353, '1989', 995),
(9, 'Fortunauta y Jacinta', 'Plaza & Jamés', 'Pérez Galdós', 'Novela', 'España', 625, '1984', 725);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `Num_pedido` int(11) NOT NULL,
  `Codigo_libro` tinyint(5) NOT NULL,
  `Codigo_usuario` tinyint(5) NOT NULL,
  `Fecha_salida` date NOT NULL,
  `FechaMax_devolver` date NOT NULL,
  `Fecha_devolver` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`Num_pedido`, `Codigo_libro`, `Codigo_usuario`, `Fecha_salida`, `FechaMax_devolver`, `Fecha_devolver`) VALUES
(2, 3, 2, '1999-11-03', '1999-11-22', '1999-11-20'),
(1, 1, 3, '1999-11-01', '1999-11-15', '1999-11-11'),
(3, 2, 5, '1999-11-18', '1999-11-30', '1999-11-25'),
(4, 5, 6, '1999-11-21', '1999-12-03', '1999-12-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Codigo_usuario` tinyint(5) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellidos` text NOT NULL,
  `D.N.I` text NOT NULL,
  `Domicilio` text NOT NULL,
  `Poblacion` text NOT NULL,
  `Provincia` text NOT NULL,
  `Fecha_nac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Codigo_usuario`, `Nombre`, `Apellidos`, `D.N.I`, `Domicilio`, `Poblacion`, `Provincia`, `Fecha_nac`) VALUES
(1, 'Inés', 'Posadas Gil', '42.117.892-S', 'Av.Escaleritas 12', 'Las Palmas G.C.', 'Las Palmas', '1971-07-04'),
(2, 'José', 'Sánchez Pons', '31.765.348-D', 'Mesa y López 51', 'Las Palmas G.C.', 'Las Palmas', '1966-09-06'),
(3, 'Miguel', 'Gómez Sáez', '11.542-981-G', 'Gran Vía 71', 'Madrid', 'Madrid', '1976-12-09'),
(4, 'Eva', 'Santana Páez', '78.542.450-L', 'Pio Baroja 23', 'Bilbao', 'Vizcaya', '1980-09-17'),
(5, 'Yolanda', 'Betancor Díaz', '44.312.870-Z', 'El Cid 45', 'Miranda de Ebro', 'Burgos', '1976-09-17'),
(6, 'Juan Luis', 'Blasco Pita', '47.234.471-P', 'Jaime I,65', 'Alcira', 'Valencia', '1982-03-01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`Codigo_libro`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD UNIQUE KEY `Codigo_usuario` (`Codigo_usuario`),
  ADD UNIQUE KEY `Codigo_libro` (`Codigo_libro`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Codigo_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Codigo_usuario` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`Codigo_usuario`) REFERENCES `usuarios` (`Codigo_usuario`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`Codigo_libro`) REFERENCES `libros` (`Codigo_libro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
